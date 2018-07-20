import mmap
import struct
import os
import logging

class Elf:

    def __init__(self, filedir):
        f = open(filedir, 'r+b')
        m = mmap.mmap(f.fileno(), 0, access=mmap.ACCESS_COPY)
        self.mmap = m

        header_data = {}
        header_data['e_ident'    ] = m[0x0:0x10]
        header_data['e_type'     ] = struct.unpack('<H', m[0x10:0x12])[0]
        header_data['e_machine'  ] = struct.unpack('<H', m[0x12:0x14])[0]
        header_data['e_version'  ] = struct.unpack('<I', m[0x14:0x18])[0]
        header_data['e_entry'    ] = struct.unpack('<I', m[0x18:0x1c])[0]
        header_data['e_phoff'    ] = struct.unpack('<I', m[0x1c:0x20])[0]
        header_data['e_shoff'    ] = struct.unpack('<I', m[0x20:0x24])[0]
        header_data['e_flags'    ] = struct.unpack('<I', m[0x24:0x28])[0]
        header_data['e_ehsize'   ] = struct.unpack('<H', m[0x28:0x2a])[0]
        header_data['e_phentsize'] = struct.unpack('<H', m[0x2a:0x2c])[0]
        header_data['e_phnum'    ] = struct.unpack('<H', m[0x2c:0x2e])[0]
        header_data['e_shentsize'] = struct.unpack('<H', m[0x2e:0x30])[0]
        header_data['e_shnum'    ] = struct.unpack('<H', m[0x30:0x32])[0]
        header_data['e_shstrndx' ] = struct.unpack('<H', m[0x32:0x34])[0]
        
        self.header = header_data

    def get_program_header(self, num):
        if (num > self.header['e_phnum']) or (num <= 0):
            return
        offset = self.header['e_phoff'] + self.header['e_phentsize'] * (num - 1)
        program_header = {}
        program_header['p_type'  ] = struct.unpack('<I', self.mmap[offset:offset+4])[0]
        program_header['p_offset'] = struct.unpack('<I', self.mmap[offset+4:offset+8])[0]
        program_header['p_vaddr' ] = struct.unpack('<I', self.mmap[offset+8:offset+12])[0]
        program_header['p_paddr' ] = struct.unpack('<I', self.mmap[offset+12:offset+16])[0]
        program_header['p_filesz'] = struct.unpack('<I', self.mmap[offset+16:offset+20])[0]
        program_header['p_memsz' ] = struct.unpack('<I', self.mmap[offset+20:offset+24])[0]
        program_header['p_flags' ] = struct.unpack('<I', self.mmap[offset+24:offset+28])[0]
        program_header['p_align' ] = struct.unpack('<I', self.mmap[offset+28:offset+32])[0]
        return program_header

    def header_info(self):
        #print(self.header)
        return self.header

    def insert_so(self, filedir):
        core_so = open(filedir, 'r+b')
        size = os.path.getsize(filedir)
        insert_position = 0
        phnum = self.header['e_phnum']
        for i in range(phnum-1, -1, -1):
            offset = self.header['e_phoff'] + self.header['e_phentsize'] * i
            p_type = struct.unpack('<I', self.mmap[offset:offset+4])[0]
            if p_type == 1:
                p_filesz = struct.unpack('<I', self.mmap[offset+16:offset+20])[0]
                p_offset = struct.unpack('<I', self.mmap[offset+4:offset+8])[0]
                p_memsz  = struct.unpack('<I', self.mmap[offset+20:offset+24])[0]
                p_vaddr  = struct.unpack('<I', self.mmap[offset+8:offset+12])[0]
                insert_position = self.header['e_shoff']
                #modifyed p_filesz and p_memsz
                added_size = insert_position - p_offset - p_filesz + size
                self.mmap[offset+16:offset+20] = struct.pack('<I', p_filesz + added_size)
                self.mmap[offset+20:offset+24] = struct.pack('<I', p_memsz + added_size)
                #save offset
                self.mmap[0x20:0x24] = struct.pack('<I', insert_position)
                logging.info("core so virtual offset: %x", p_vaddr + insert_position - p_offset)
                break
        #create new so
        parentdir = os.path.abspath(os.path.join(filedir, os.pardir))
        new_so = open(os.path.join(parentdir, 'libreinforce.so'), 'w+b')
        new_so.write(self.mmap[0:insert_position])
        for b in core_so:
            new_so.write(b)

        core_so.close()
        new_so.close()
    
    def save(self):
        self.mmap.close()



if __name__ == "__main__":
    elf = Elf(os.path.join(os.getcwd(), "core", "libs", "armeabi-v7a", "libreinforce.so"))
    elf.header_info()
    elf.insert_so(os.path.join(os.getcwd(), "core", "libs", "armeabi-v7a", "libcore.so"))
    print(elf.get_program_header(9))






        