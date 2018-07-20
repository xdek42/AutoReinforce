#include "ElfLoader.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <signal.h>
#include <unistd.h>
#include "log.h"

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