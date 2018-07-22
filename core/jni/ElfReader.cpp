#include "ElfReader.h"
#include <string.h>
#include "soinfo.h"
#include <sys/mman.h>
#include <stdint.h>

int phdr_table_get_load_size(const Elf32_Phdr* phdr_table, int phdr_count,  Elf32_Addr* out_min_vaddr = nullptr, Elf32_Addr* out_max_vaddr = nullptr) 
{
    Elf32_Addr min_vaddr = UINT32_MAX;
    Elf32_Addr max_vaddr = 0;

    bool found_pt_load = false;
    for (size_t i = 0; i < phdr_count; ++i) {
        const Elf32_Phdr* phdr = &phdr_table[i];

        if (phdr->p_type != 1) {
            continue;
        }
        found_pt_load = true;

        if (phdr->p_vaddr < min_vaddr) {
            min_vaddr = phdr->p_vaddr;
        }

        if (phdr->p_vaddr + phdr->p_memsz > max_vaddr) {
            max_vaddr = phdr->p_vaddr + phdr->p_memsz;
        }
    }
    if (!found_pt_load) {
        min_vaddr = 0;
    }

    min_vaddr = PAGE_START(min_vaddr);
    max_vaddr = PAGE_END(max_vaddr);

    if (out_min_vaddr != nullptr) {
        *out_min_vaddr = min_vaddr;
    }
    if (out_max_vaddr != nullptr) {
        *out_max_vaddr = max_vaddr;
    }
    return max_vaddr - min_vaddr;
}

bool ElfReader::Load() {
    return ReadElfHeader() &&
           ReadProgramHeader() &&
           ReserveAddressSpace() &&
           LoadSegments() &&
           FindPhdr();
}

bool ElfReader::ReadElfHeader()
{
    memcpy(&header_, base, sizeof(Elf32_Ehdr));
    return true;
}

bool ElfReader::ReadProgramHeader()
{
    phdr_num_ = header_.e_phnum;
    phdr_table_ = reinterpret_cast<Elf32_Phdr*>(base + header_.e_phoff);
    return true;
}

bool ElfReader::ReserveAddressSpace()
{
    Elf32_Addr min_vaddr;
    load_size_ = phdr_table_get_load_size(phdr_table_, phdr_num_, &min_vaddr);
    uint8_t* addr = reinterpret_cast<uint8_t*>(min_vaddr);
    void* start;

    int mmap_flags = MAP_PRIVATE | MAP_ANONYMOUS;
    start = mmap(addr, load_size_, PROT_NONE, mmap_flags, -1, 0);
    load_start_ = start;
    load_bias_ = reinterpret_cast<uint8_t*>(start) - addr;
    return true;
}

bool ElfReader::LoadSegments()
{
    for (size_t i = 0; i < phdr_num_; ++i) {
        const Elf32_Phdr* phdr = &phdr_table_[i];

        if (phdr->p_type != 1) {
            continue;
        }
        Elf32_Addr seg_start = phdr->p_vaddr + load_bias_;
        Elf32_Addr seg_end   = seg_start + phdr->p_memsz;

        Elf32_Addr seg_page_start = PAGE_START(seg_start);
        Elf32_Addr seg_page_end   = PAGE_END(seg_end);

        Elf32_Addr seg_file_end   = seg_start + phdr->p_filesz;

        // File offsets.
        Elf32_Addr file_start = phdr->p_offset;
        Elf32_Addr file_end   = file_start + phdr->p_filesz;

        Elf32_Addr file_page_start = PAGE_START(file_start);
        Elf32_Addr file_length = file_end - file_page_start;

        if (file_length != 0) {
            memcpy(reinterpret_cast<void*>(seg_page_start), base + phdr->p_offset, file_length);
        }

        if ((phdr->p_flags & PF_W) != 0 && PAGE_OFFSET(seg_file_end) > 0) {
            memset(reinterpret_cast<void*>(seg_file_end), 0, PAGE_SIZE - PAGE_OFFSET(seg_file_end));
        }

        seg_file_end = PAGE_END(seg_file_end);

        if (seg_page_end > seg_file_end) {
            memset(reinterpret_cast<void*>(seg_file_end), 0,  seg_page_end - seg_file_end);
        }
        //修改内存权限
        mprotect(seg_page_start, seg_page_start - seg_page_end, PFLAGS_TO_PROT(phdr->p_flags));
    }
    return true;
}

bool ElfReader::FindPhdr() {
    const Elf32_Phdr* phdr_limit = phdr_table_ + phdr_num_;
    for (const Elf32_Phdr* phdr = phdr_table_; phdr < phdr_limit; ++phdr) {
        if (phdr->p_type == PT_PHDR) {
            loaded_phdr_ = reinterpret_cast<const Elf32_Phdr*>(load_bias_ + phdr->p_vaddr);
            return true;
        }
    }

    for (const Elf32_Phdr* phdr = phdr_table_; phdr < phdr_limit; ++phdr) {
        if (phdr->p_type == PT_LOAD) {
            if (phdr->p_offset == 0) {
                Elf32_Addr  elf_addr = load_bias_ + phdr->p_vaddr;
                const Elf32_Ehdr* ehdr = reinterpret_cast<const Elf32_Ehdr*>(elf_addr);
                Elf32_Addr  offset = ehdr->e_phoff;
                loaded_phdr_ = reinterpret_cast<const Elf32_Phdr*>((Elf32_Addr)ehdr + offset);
                return true;
            }
            break;
        }
    }
    return false;
}

