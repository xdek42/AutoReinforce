#ifndef SOINFO_H
#define SOINFO_H


#define SOINFO_NAME_LEN 128
#define ELF32_R_SYM(i)	((i)>>8)
#define DT_NULL 0

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

typedef struct
{
  uint32_t r_offset;		/* Address */
  uint32_t r_info;			/* Relocation type and symbol index */
} Elf32_Rel;


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

struct soinfo
{
    const char name[SOINFO_NAME_LEN];
    void *phdr;
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

    void *rel;
    unsigned rel_count;
    unsigned *preinit_array;
    unsigned preinit_array_count;
    unsigned *init_array;
    unsigned init_array_count;
    unsigned *fini_array;
    unsigned fini_array_count;
    void (*init_func)(void);
    void (*fini_func)(void);
#ifdef ANDROID_ARM_LINKER
    /* ARM EABI section used for stack unwinding. */
    unsigned *ARM_exidx;
    unsigned ARM_exidx_count;
#endif
    unsigned refcount;
    struct link_map linkmap;
    int constructors_called;
    unsigned gnu_relro_start;
    unsigned gnu_relro_len;
};


#endif