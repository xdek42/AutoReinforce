#ifndef ELFLOADER_H
#define ELFLOADER_H

#include "soinfo.h"

class ElfLoader {
public:
    static void *getSoAddress();
    static soinfo *load_library(uint8_t *base);
private:
    static bool soinfo_link_image(soinfo *si);
    static int soinfo_relocate(soinfo* si, Elf32_Rel *rel, uint32_t count, soinfo *needed[]);
    static void CallConstructors(soinfo *si);
};

#endif
