#ifndef SOINFO_H
#define SOINFO_H

#include <stdint.h>

#define PT_NULL 0
#define PT_LOAD 1
#define PT_DYNAMIC 2
#define PT_INTERP 3
#define PT_NOTE 4
#define PT_SHLIB 5
#define PT_PHDR 6

#define SOINFO_NAME_LEN 128

#define ELF_ST_BIND(info)		((uint32_t)(info) >> 4)
#define ELF_ST_TYPE(info)		((uint32_t)(info) & 0xf)
#define ELF_ST_INFO(bind,type)  ((Elf_Byte)(((bind) << 4) | ((type) & 0xf)))
#define ELF_ST_VISIBILITY(other)    ((uint32_t)(other) & 3)
#define ELF32_ST_BIND(info)    ELF_ST_BIND(info)
#define ELF32_ST_TYPE(info)    ELF_ST_TYPE(info)
#define ELF32_ST_INFO(bind,type)	ELF_ST_INFO(bind,type)
#define ELF32_ST_VISIBILITY(other)	ELF_ST_VISIBILITY(other)
#define ELF32_R_SYM(info)	((info) >> 8)
#define ELF32_R_TYPE(info)	((info) & 0xff)
#define ELF32_R_INFO(sym, type) (((sym) << 8) + (unsigned char)(type))

#define DT_NULL		0	/* Marks end of dynamic array */
#define DT_NEEDED	1	/* Name of needed library (DT_STRTAB offset) */
#define DT_PLTRELSZ	2	/* Size, in bytes, of relocations in PLT */
#define DT_PLTGOT	3	/* Address of PLT and/or GOT */
#define DT_HASH		4	/* Address of symbol hash table */
#define DT_STRTAB	5	/* Address of string table */
#define DT_SYMTAB	6	/* Address of symbol table */
#define DT_RELA		7	/* Address of Rela relocation table */
#define DT_RELASZ	8	/* Size, in bytes, of DT_RELA table */
#define DT_RELAENT	9	/* Size, in bytes, of one DT_RELA entry */
#define DT_STRSZ	10	/* Size, in bytes, of DT_STRTAB table */
#define DT_SYMENT	11	/* Size, in bytes, of one DT_SYMTAB entry */
#define DT_INIT		12	/* Address of initialization function */
#define DT_FINI		13	/* Address of termination function */
#define DT_SONAME	14	/* Shared object name (DT_STRTAB offset) */
#define DT_RPATH	15	/* Library search path (DT_STRTAB offset) */
#define DT_SYMBOLIC	16	/* Start symbol search within local object */
#define DT_REL		17	/* Address of Rel relocation table */
#define DT_RELSZ	18	/* Size, in bytes, of DT_REL table */
#define DT_RELENT	19	/* Size, in bytes, of one DT_REL entry */
#define DT_PLTREL	20	/* Type of PLT relocation entries */
#define DT_DEBUG	21	/* Used for debugging; unspecified */
#define DT_TEXTREL	22	/* Relocations might modify non-writable seg */
#define DT_JMPREL	23	/* Address of relocations associated with PLT */
#define DT_BIND_NOW	24	/* Process all relocations at load-time */
#define DT_INIT_ARRAY	25	/* Address of initialization function array */
#define DT_FINI_ARRAY	26	/* Size, in bytes, of DT_INIT_ARRAY array */
#define DT_INIT_ARRAYSZ 27	/* Address of termination function array */
#define DT_FINI_ARRAYSZ 28	/* Size, in bytes, of DT_FINI_ARRAY array*/
#define DT_NUM		29
#define DT_PREINIT_ARRAY   32
#define DT_PREINIT_ARRAYSZ 33

#define DT_LOOS		0x60000000	/* Operating system specific range */
#define DT_VERSYM	0x6ffffff0	/* Symbol versions */
#define DT_FLAGS_1	0x6ffffffb	/* ELF dynamic flags */
#define DT_VERDEF	0x6ffffffc	/* Versions defined by file */
#define DT_VERDEFNUM	0x6ffffffd	/* Number of versions defined by file */
#define DT_VERNEED	0x6ffffffe	/* Versions needed by file */
#define DT_VERNEEDNUM	0x6fffffff	/* Number of versions needed by file */
#define DT_HIOS		0x6fffffff
#define DT_LOPROC	0x70000000	/* Processor-specific range */
#define DT_HIPROC	0x7fffffff

#define EI_NIDENT 16

#define PAGE_MASK 0xFFFFF000
#define PAGE_SIZE 4096
#define PAGE_START(x)  ((x) & PAGE_MASK)
#define PAGE_OFFSET(x) ((x) & ~PAGE_MASK)
#define PAGE_END(x)    PAGE_START((x) + (PAGE_SIZE-1))


#define MAYBE_MAP_FLAG(x, from, to)  (((x) & (from)) ? (to) : 0)
#define PFLAGS_TO_PROT(x) (MAYBE_MAP_FLAG((x), PF_X, PROT_EXEC) | \
                           MAYBE_MAP_FLAG((x), PF_R, PROT_READ) | \
                           MAYBE_MAP_FLAG((x), PF_W, PROT_WRITE))

#define R_ARM_NONE		0
#define R_ARM_PC24		1
#define R_ARM_ABS32		2
#define R_ARM_REL32		3
#define R_ARM_PC13		4
#define R_ARM_ABS16		5
#define R_ARM_ABS12		6
#define R_ARM_THM_ABS5		7
#define R_ARM_ABS8		8
#define R_ARM_SBREL32		9
#define R_ARM_THM_PC22		10
#define R_ARM_THM_PC8		11
#define R_ARM_AMP_VCALL9	12
#define R_ARM_SWI24		13
#define R_ARM_THM_SWI8		14
#define R_ARM_XPC25		15
#define R_ARM_THM_XPC22		16
#define R_ARM_TLS_DTPMOD32	17	/* ID of module containing symbol */
#define R_ARM_TLS_DTPOFF32	18	/* Offset in TLS block */
#define R_ARM_TLS_TPOFF32	19	/* Offset in static TLS block */
#define R_ARM_COPY		20
#define R_ARM_GLOB_DAT		21
#define	R_ARM_JUMP_SLOT		22
#define R_ARM_RELATIVE		23
#define	R_ARM_GOTOFF		24
#define R_ARM_GOTPC		25
#define R_ARM_GOT32		26
#define R_ARM_PLT32		27
#define R_ARM_ALU_PCREL_7_0	32
#define R_ARM_ALU_PCREL_15_8	33
#define R_ARM_ALU_PCREL_23_15	34
#define R_ARM_ALU_SBREL_11_0	35
#define R_ARM_ALU_SBREL_19_12	36
#define R_ARM_ALU_SBREL_27_20	37
#define R_ARM_GNU_VTENTRY	100
#define R_ARM_GNU_VTINHERIT	101
#define R_ARM_THM_PC11		102
#define R_ARM_THM_PC9		103
#define R_ARM_TLS_GD32		104	/* PC-rel 32 bit for global dynamic */
#define R_ARM_TLS_LDM32		105	/* PC-rel 32 bit for local dynamic */
#define R_ARM_TLS_LDO32		106	/* 32 bit offset relative to TLS */
#define R_ARM_TLS_IE32		107	/* PC-rel 32 bit for GOT entry of */
#define R_ARM_TLS_LE32		108
#define R_ARM_TLS_LDO12		109
#define R_ARM_TLS_LE12		110
#define R_ARM_TLS_IE12GP	111
#define R_ARM_RXPC25		249
#define R_ARM_RSBREL32		250
#define R_ARM_THM_RPC22		251
#define R_ARM_RREL32		252
#define R_ARM_RABS32		253
#define R_ARM_RPC24		254
#define R_ARM_RBASE		255
#define R_TYPE(name)		__CONCAT(R_ARM_,name)

#define FLAG_LINKED     0x00000001
#define FLAG_EXE        0x00000004 // The main executable
#define FLAG_LINKER     0x00000010 // The linker itself

#define PT_NULL		0		/* Program header table entry unused */
#define PT_LOAD		1		/* Loadable program segment */
#define PT_DYNAMIC	2		/* Dynamic linking information */
#define PT_INTERP	3		/* Program interpreter */
#define PT_NOTE		4		/* Auxiliary information */
#define PT_SHLIB	5		/* Reserved, unspecified semantics */
#define PT_PHDR		6		/* Entry for header table itself */
#define PT_TLS		7		/* TLS initialisation image */
#define PT_NUM		8
#define PT_LOOS		0x60000000	/* OS-specific range */
#define PT_GNU_EH_FRAME 0x6474e550	/* EH frame segment */
#define PT_GNU_STACK	0x6474e551	/* Indicate executable stack */
#define PT_GNU_RELRO	0x6474e552	/* Make read-only after relocation */
#define PT_HIOS		0x6fffffff
#define PT_LOPROC	0x70000000	/* Processor-specific range */
#define PT_HIPROC	0x7fffffff
#define PT_MIPS_REGINFO 0x70000000
#define PF_R		0x4		/* Segment is readable */
#define PF_W		0x2		/* Segment is writable */
#define PF_X		0x1		/* Segment is executable */
#define PF_MASKOS	0x0ff00000	/* Operating system specific values */
#define PF_MASKPROC	0xf0000000	/* Processor-specific values */
#define PN_XNUM		0xffff


/* st_info: Symbol Bindings */
#define STB_LOCAL		0	/* local symbol */
#define STB_GLOBAL		1	/* global symbol */
#define STB_WEAK		2	/* weakly defined global symbol */
#define STB_NUM			3

#define STB_LOOS		10	/* Operating system specific range */
#define STB_HIOS		12
#define STB_LOPROC		13	/* Processor-specific range */
#define STB_HIPROC		15

#define SHN_UNDEF	0		/* Undefined section */
#define SHN_LORESERVE	0xff00		/* Reserved range */
#define SHN_ABS		0xfff1		/*  Absolute symbols */
#define SHN_COMMON	0xfff2		/*  Common symbols */
#define SHN_XINDEX	0xffff		/* Escape -- index stored elsewhere */
#define SHN_HIRESERVE	0xffff
#define SHN_LOPROC	0xff00		/* Processor-specific range */
#define SHN_HIPROC	0xff1f
#define SHN_LOOS	0xff20		/* Operating system specific range */
#define SHN_HIOS	0xff3f
#define SHN_MIPS_ACOMMON 0xff00
#define SHN_MIPS_TEXT	0xff01
#define SHN_MIPS_DATA	0xff02
#define SHN_MIPS_SCOMMON 0xff03

typedef uint32_t	Elf32_Addr;
typedef uint16_t	Elf32_Half;
typedef uint32_t	Elf32_Off;
typedef int32_t		Elf32_Sword;
typedef uint32_t	Elf32_Word;
typedef uint64_t	Elf32_Lword;
typedef Elf32_Word	Elf32_Hashelt;

struct link_map
{
    void *l_addr;
    char * l_name;
    void *l_ld;
    struct link_map * l_next;
    struct link_map * l_prev;
};

typedef struct elf32_phdr{
    Elf32_Word p_type;
    Elf32_Off p_offset;
    Elf32_Addr p_vaddr;
    Elf32_Addr p_paddr;
    Elf32_Word p_filesz;
    Elf32_Word p_memsz;
    Elf32_Word p_flags;
    Elf32_Word p_align;
} Elf32_Phdr;

typedef struct
{
    uint32_t r_offset;		/* Address */
    uint32_t r_info;			/* Relocation type and symbol index */
} Elf32_Rel;

typedef struct elf32_hdr{
    unsigned char e_ident[EI_NIDENT];
    Elf32_Half e_type;
    Elf32_Half e_machine;
    Elf32_Word e_version;
    Elf32_Addr e_entry;
    Elf32_Off e_phoff;
    Elf32_Off e_shoff;
    Elf32_Word e_flags;
    Elf32_Half e_ehsize;
    Elf32_Half e_phentsize;
    Elf32_Half e_phnum;
    Elf32_Half e_shentsize;
    Elf32_Half e_shnum;
    Elf32_Half e_shstrndx;
} Elf32_Ehdr;


typedef struct {
    Elf32_Word	st_name;	/* String table index of name. */
    Elf32_Addr	st_value;	/* Symbol value. */
    Elf32_Word	st_size;	/* Size of associated object. */
    unsigned char	st_info;	/* Type and binding information. */
    unsigned char	st_other;	/* Reserved (not used). */
    Elf32_Half	st_shndx;	/* Section index of symbol. */
} Elf32_Sym;

typedef struct dynamic {
    Elf32_Sword d_tag;
    union {
        Elf32_Sword d_val;
        Elf32_Addr d_ptr;
    } d_un;
} Elf32_Dyn;


typedef void (*linker_function_t)();

struct soinfo
{
    char name[SOINFO_NAME_LEN];
    Elf32_Phdr *phdr;
    int phnum;
    unsigned entry;
    unsigned base;
    unsigned size;
    int unused;  // DO NOT USE, maintained for compatibility.
    Elf32_Dyn *dynamic;
    unsigned wrprotect_start;
    unsigned wrprotect_end;
    soinfo *next;
    unsigned flags;
    const char *strtab;
    Elf32_Sym *symtab;
    unsigned nbucket;
    unsigned nchain;
    unsigned *bucket;
    unsigned *chain;
    void *plt_got;

    Elf32_Rel *plt_rel;
    unsigned plt_rel_count;

    Elf32_Rel *rel;
    unsigned rel_count;

    linker_function_t* preinit_array;
    size_t preinit_array_count;

    linker_function_t* init_array;
    size_t init_array_count;
    linker_function_t* fini_array;
    size_t fini_array_count;

    linker_function_t init_func;
    linker_function_t fini_func;

    unsigned *ARM_exidx;
    unsigned ARM_exidx_count;
    unsigned refcount;
    struct link_map linkmap;
    int constructors_called;
    Elf32_Addr load_bias;
    bool has_text_relocations;
    bool has_DT_SYMBOLIC;
};


#endif