#include "AntiDebug.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/types.h>
#include <signal.h>
#include <unistd.h>
#include "soinfo.h"
#include "log.h"
#include <dlfcn.h>


void checkPort()
{
    //TODO encrypt file name
    int pid = getpid();
    char buffer[512] = {0};
    const char *fileName = "/proc/net/tcp";
    FILE *fd = fopen(fileName, "r");
    if (fd) {
        while (fgets(buffer, 512, fd)) {
            //check ida port 23946
            if (strstr(buffer, "5D8A")) {
                fclose(fd);
                raise(SIGTERM);            
            }
            //check frida port 27042
            if (strncmp(buffer, "69A2", 4) == 0) {
                fclose(fd);
                raise(SIGTERM);            
            }
        }
    }
    fclose(fd);
}

void checkTracerPid()
{
    char fileName[50] = {0};
    char buffer[512] = {0};
    int pid = getpid();
    sprintf(fileName, "/proc/%d/status", pid);
    FILE *fd = fopen(fileName, "r");
    if (fd) {
        while (fgets(buffer, 512, fd)) {
            if (strstr(buffer, "TracerPid")) {
                if (atoi(&buffer[10])) {
                    fclose(fd);
                    raise(SIGTERM);            
                }
            }
        }
    }
    fclose(fd);
}


const char *getStr(struct soinfo *si, uint32_t r_info)
{
    uint16_t ndx = ELF32_R_SYM(r_info);
    Elf32_Sym *symtab = si->symtab;
    const char *strtab = si->strtab;
    return strtab + symtab[ndx].st_name;
}

uint32_t getModuleBase(const char *module)
{
    FILE *fd = fopen("/proc/self/maps", "r");
    char buffer[512] = {0};
    if (fd) {
        while (fgets(buffer, 512, fd)) {
            if (strstr(buffer, module)) {
                char * base = strtok(buffer, "-");
                fclose(fd);
                return strtoul(base,NULL,16);
            }
        }
    }
    fclose(fd);
    return 0;
}

void checkDlactivity()
{
    struct soinfo *si = (struct soinfo *) dlopen("/system/bin/linker", RTLD_NOW);
    uint32_t offset = 0;
    if (si) {
        unsigned base = si->base;
        Elf32_Sym *sym = si->symtab;
        while (sym) {
            if (strcmp(si->strtab + sym->st_name, "rtld_db_dlactivity") == 0) {
                offset = sym->st_value;
                break;
            }
            sym++;
        }
    }
    dlclose(si);
    uint32_t address = getModuleBase("/system/bin/linker") + offset - 1;
    uint16_t code = *(uint16_t *)(address);
    LOGI("rtld_db_dlactivity address: %x", address);
    LOGI("rtld_db_dlactivity code: %x", code);
    if (code == 0xDE10) {
        LOGI("Debug detected");
        raise(SIGTERM);
    }
}