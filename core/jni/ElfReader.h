#ifndef ELFREADER_H
#define ELFREADER_H

#include <sys/types.h>
#include <unistd.h>
#include "soinfo.h"

class ElfReader {
public:
    ElfReader(uint8_t *b) {base = b;}
    bool Load();
    int phdr_count() { return phdr_num_;}
    Elf32_Addr load_start() {return reinterpret_cast<Elf32_Addr>(load_start_);}
    int load_size() { return load_size_; }
    Elf32_Addr load_bias() { return load_bias_; }
    const Elf32_Phdr* loaded_phdr() { return loaded_phdr_; }
private:
    uint8_t *base;
    int phdr_num_;
    Elf32_Ehdr header_;
    Elf32_Phdr *phdr_table_;
    int load_size_;
    void *load_start_;
    Elf32_Addr load_bias_;
    const Elf32_Phdr* loaded_phdr_;
    bool ReadElfHeader();
    bool ReadProgramHeader();
    bool ReserveAddressSpace();
    bool LoadSegments();
    bool FindPhdr();
};

#endif