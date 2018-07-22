#include "ElfLoader.h"
#include "ElfReader.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <signal.h>
#include <unistd.h>
#include <sys/mman.h>
#include <dlfcn.h>
#include "log.h"

static int _phdr_table_set_load_prot(const Elf32_Phdr* phdr_table, int phdr_count, Elf32_Addr load_bias, int extra_prot_flags)
{
    const Elf32_Phdr* phdr = phdr_table;
    const Elf32_Phdr* phdr_limit = phdr + phdr_count;

    for (; phdr < phdr_limit; phdr++) {
        if (phdr->p_type != PT_LOAD || (phdr->p_flags & PF_W) != 0)
            continue;

        Elf32_Addr seg_page_start = PAGE_START(phdr->p_vaddr) + load_bias;
        Elf32_Addr seg_page_end   = PAGE_END(phdr->p_vaddr + phdr->p_memsz) + load_bias;

        int ret = mprotect((void*)seg_page_start,
                           seg_page_end - seg_page_start,
                           PFLAGS_TO_PROT(phdr->p_flags) | extra_prot_flags);
        if (ret < 0) {
            return -1;
        }
    }
    return 0;
}

int phdr_table_protect_segments(const Elf32_Phdr* phdr_table, int phdr_count, Elf32_Addr load_bias)
{
    return _phdr_table_set_load_prot(phdr_table, phdr_count, load_bias, 0);
}

int phdr_table_unprotect_segments(const Elf32_Phdr* phdr_table, int phdr_count, Elf32_Addr load_bias)
{
    return _phdr_table_set_load_prot(phdr_table, phdr_count, load_bias, PROT_WRITE);
}

void phdr_table_get_dynamic_section(const Elf32_Phdr* phdr_table,
                               int               phdr_count,
                               Elf32_Addr        load_bias,
                               Elf32_Dyn**       dynamic,
                               size_t*           dynamic_count,
                               Elf32_Word*       dynamic_flags)
{
    const Elf32_Phdr* phdr = phdr_table;
    const Elf32_Phdr* phdr_limit = phdr + phdr_count;

    for (phdr = phdr_table; phdr < phdr_limit; phdr++) {
        if (phdr->p_type != PT_DYNAMIC) {
            continue;
        }

        *dynamic = reinterpret_cast<Elf32_Dyn*>(load_bias + phdr->p_vaddr);
        if (dynamic_count) {
            *dynamic_count = (unsigned)(phdr->p_memsz / 8);
        }
        if (dynamic_flags) {
            *dynamic_flags = phdr->p_flags;
        }
        return;
    }
    *dynamic = NULL;
    if (dynamic_count) {
        *dynamic_count = 0;
    }
}

static unsigned elfhash(const char* _name) 
{
    const unsigned char* name = (const unsigned char*) _name;
    unsigned h = 0, g;
    while(*name) {
        h = (h << 4) + *name++;
        g = h & 0xf0000000;
        h ^= g;
        h ^= g >> 24;
    }
    return h;
}

static Elf32_Sym* soinfo_elf_lookup(soinfo* si, unsigned hash, const char* name) 
{
    Elf32_Sym* symtab = si->symtab;
    const char* strtab = si->strtab;
    for (unsigned n = si->bucket[hash % si->nbucket]; n != 0; n = si->chain[n]) {
        Elf32_Sym* s = symtab + n;
        if (strcmp(strtab + s->st_name, name)) 
            continue;
        switch (ELF32_ST_BIND(s->st_info)) {
            case STB_GLOBAL:
            case STB_WEAK:
                if (s->st_shndx == SHN_UNDEF) {
                    continue;
                }
                return s;
        }
    }
    return NULL;
}

static Elf32_Sym* soinfo_do_lookup(soinfo* si, const char* name, soinfo** lsi, soinfo* needed[]) 
{
    unsigned elf_hash = elfhash(name);
    Elf32_Sym* s = NULL;
    for (int i = 0; needed[i] != NULL; i++) {
        s = soinfo_elf_lookup(needed[i], elf_hash, name);
        if (s != NULL) {
            *lsi = needed[i];
            return s;
        }
    }

    return NULL;
}

static void *ElfLoader::getSoAddress()
{
    uint32_t *loaderBase = 0;
    FILE *fd = fopen("/proc/self/maps", "r");
    char buffer[512] = {0};
    if (fd) {
        while (fgets(buffer, 512, fd)) {
            if (strstr(buffer, "libreinforce.so")) {
                char * base = strtok(buffer, "-");
                loaderBase = (uint32_t *)strtoul(base,NULL,16);
                break;
            }
        }
    }
    uint32_t offset = *(loaderBase + 8);
    uint8_t *so = (uint8_t *)loaderBase + offset;
    LOGI("find core so: %c%c%c", *(so+1), *(so+2), *(so+3));
    fclose(fd);
    return so;
}

static soinfo *ElfLoader::load_library(uint8_t *base)
{
    //load so from memory
    ElfReader elf_reader(base);
    elf_reader.Load();
    //create soinfo struct
    soinfo *si = new soinfo;
    if (si == nullptr) {
        return nullptr;
    }
    si->base = elf_reader.load_start();
    si->size = elf_reader.load_size();
    si->load_bias = elf_reader.load_bias();
    si->phnum = elf_reader.phdr_count();
    si->phdr = elf_reader.loaded_phdr();
    //link so
    soinfo_link_image(si);
    // call so constructor
    CallConstructors(si);
    return si;
}

static bool ElfLoader::soinfo_link_image(soinfo *si)
{
    Elf32_Addr base = si->load_bias;
    const Elf32_Phdr *phdr = si->phdr;
    int phnum = si->phnum;

    // 1.Extract dynamic section
    int dynamic_count;
    Elf32_Word dynamic_flags;
    phdr_table_get_dynamic_section(phdr, phnum, base, &si->dynamic, &dynamic_count, &dynamic_flags);
    uint32_t needed_count = 0;
    for (Elf32_Dyn *d = si->dynamic; d->d_tag != DT_NULL; ++d) {
        switch (d->d_tag) {
            case DT_HASH:
                si->nbucket = ((unsigned *) (base + d->d_un.d_ptr))[0];
                si->nchain = ((unsigned *) (base + d->d_un.d_ptr))[1];
                si->bucket = (unsigned *) (base + d->d_un.d_ptr + 8);
                si->chain = (unsigned *) (base + d->d_un.d_ptr + 8 + si->nbucket * 4);
                break;
            case DT_STRTAB:
                si->strtab = (const char *) (base + d->d_un.d_ptr);
                break;
            case DT_SYMTAB:
                si->symtab = (Elf32_Sym *) (base + d->d_un.d_ptr);
                break;
            case DT_PLTREL:
                if (d->d_un.d_val != DT_REL) {
                    return false;
                }
                break;
            case DT_JMPREL:
                si->plt_rel = (Elf32_Rel*) (base + d->d_un.d_ptr);
                break;
            case DT_PLTRELSZ:
                si->plt_rel_count = d->d_un.d_val / sizeof(Elf32_Rel);
                break;
            case DT_REL:
                si->rel = (Elf32_Rel*) (base + d->d_un.d_ptr);
                break;
            case DT_RELSZ:
                si->rel_count = d->d_un.d_val / sizeof(Elf32_Rel);
                break;
            case DT_PLTGOT:
                si->plt_got = (unsigned *)(base + d->d_un.d_ptr);
                break;
            case DT_DEBUG:
                break;
            case DT_RELA:
                return false;
            case DT_INIT:
                si->init_func = reinterpret_cast<linker_function_t>(base + d->d_un.d_ptr);
                break;
            case DT_FINI:
                si->fini_func = reinterpret_cast<linker_function_t>(base + d->d_un.d_ptr);
                break;
            case DT_INIT_ARRAY:
                si->init_array = reinterpret_cast<linker_function_t*>(base + d->d_un.d_ptr);
                break;
            case DT_INIT_ARRAYSZ:
                si->init_array_count = ((unsigned)d->d_un.d_val) / sizeof(Elf32_Addr);
                break;
            case DT_FINI_ARRAY:
                si->fini_array = reinterpret_cast<linker_function_t*>(base + d->d_un.d_ptr);
                break;
            case DT_FINI_ARRAYSZ:
                si->fini_array_count = ((unsigned)d->d_un.d_val) / sizeof(Elf32_Addr);
                break;
            case DT_PREINIT_ARRAY:
                si->preinit_array = reinterpret_cast<linker_function_t*>(base + d->d_un.d_ptr);
                break;
            case DT_PREINIT_ARRAYSZ:
                si->preinit_array_count = ((unsigned)d->d_un.d_val) / sizeof(Elf32_Addr);
                break;
            case DT_TEXTREL:
                si->has_text_relocations = true;
                break;
            case DT_SYMBOLIC:
                si->has_DT_SYMBOLIC = true;
                break;
            case DT_NEEDED:
                ++needed_count;
                break;
            }

    }

    // 2.Load all of the libraries from LD_PRELOAD
    soinfo** needed = (soinfo**) malloc((1 + needed_count) * sizeof(soinfo*));
    soinfo** pneeded = needed;
    for (Elf32_Dyn* d = si->dynamic; d->d_tag != DT_NULL; ++d) {
        if (d->d_tag == DT_NEEDED) {
            const char* library_name = si->strtab + d->d_un.d_val;
            soinfo* lsi = dlopen(library_name, RTLD_LAZY);
            *pneeded++ = lsi;
        }
    }
    *pneeded = NULL;

    // 3.Relocate
    // first unprotect segment, i.e make them writabe
    if (si->has_text_relocations) {
        phdr_table_unprotect_segments(si->phdr, si->phnum, si->load_bias);
    }
    if (si->plt_rel != NULL) {
        soinfo_relocate(si, si->plt_rel, si->plt_rel_count, needed);
    }
    if (si->rel != NULL) {
        soinfo_relocate(si, si->rel, si->rel_count, needed);
    }
    // all relocations are done, we can protect our segments back to
    if (si->has_text_relocations) {
        phdr_table_protect_segments(si->phdr, si->phnum, si->load_bias);
    }
    // set linked flag
    si->flags |= FLAG_LINKED;
    return true;
}

static int ElfLoader::soinfo_relocate(soinfo* si, Elf32_Rel *rel, uint32_t count, soinfo *needed[])
{
    Elf32_Sym *symtab = si->symtab;
    const char * strtab = si->strtab;
    Elf32_Sym* s;
    Elf32_Rel* start = rel;
    soinfo* lsi;
    for (size_t idx = 0; idx < count; ++idx, ++rel) {
        unsigned type = ELF32_R_TYPE(rel->r_info);
        unsigned sym = ELF32_R_SYM(rel->r_info);
        Elf32_Addr reloc = static_cast<Elf32_Addr>(rel->r_offset + si->load_bias);
        Elf32_Addr sym_addr = 0;
        char* sym_name = NULL;
        if (type == 0) {
            continue;
        }
        if (sym != 0) {
            sym_name = (char *)(strtab + symtab[sym].st_name);
            //lookup sym in needed so
            s = soinfo_do_lookup(si, sym_name, &lsi, needed);
            if (s == NULL) {
                //wo don not care
            } else {
                sym_addr = static_cast<Elf32_Addr>(s->st_value + lsi->load_bias);
            }
        } else {
            s = nullptr;
        }
        //do reloacte
        switch (type) {
            case R_ARM_JUMP_SLOT:
                *reinterpret_cast<Elf32_Addr*>(reloc) = sym_addr;
                break;
            case R_ARM_GLOB_DAT:
                *reinterpret_cast<Elf32_Addr*>(reloc) = sym_addr;
                break;
            case R_ARM_ABS32:
                *reinterpret_cast<Elf32_Addr*>(reloc) += sym_addr;
                break;
            case R_ARM_REL32:
                *reinterpret_cast<Elf32_Addr*>(reloc) += sym_addr - rel->r_offset;
                break;
            case R_ARM_RELATIVE:
                *reinterpret_cast<Elf32_Addr*>(reloc) += si->base;
                break;
            case R_ARM_COPY:
                if (reloc == sym_addr) {
                    Elf32_Sym *src = soinfo_do_lookup(NULL, sym_name, &lsi, needed);
                    if (src == NULL) {
                        return -1;
                    }
                    if (lsi->has_DT_SYMBOLIC) {
                        return -1;
                    }
                    if (s->st_size < src->st_size) {
                        return -1;
                    }
                    memcpy((void*)reloc, (void*)(src->st_value + lsi->load_bias), src->st_size);
                } else {
                    return -1;
                }
                break;
            default:
                return -1;
        }
    }
    return 0;
}

static void CallFunction(const char* function_name, linker_function_t function)
{
    function();
}

static void CallArray(const char* array_name, linker_function_t* functions, size_t count, bool reverse) {
  if (functions == NULL) {
    return;
  }
  int begin = reverse ? (count - 1) : 0;
  int end = reverse ? -1 : count;
  int step = reverse ? -1 : 1;
  for (int i = begin; i != end; i += step) {
    CallFunction("function", functions[i]);
  }
}

static void ElfLoader::CallConstructors(soinfo *si)
{
  //call init_func
  CallFunction("DT_INIT", si->init_func);
  //call function in init_array
  CallArray("DT_INIT_ARRAY", si->init_array, si->init_array_count, false);
}