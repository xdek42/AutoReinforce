import mmap
import struct
import disassembler
import zlib
import hashlib
import logging


def uleb128_value(m, off): 
    size = 1
    result = ord(m[off+0: off+1])
    if result > 0x7f :
        cur = ord(m[off+1:off+2])
        result = (result & 0x7f) | ((cur & 0x7f) << 7)
        size += 1
        if cur > 0x7f :
            cur = ord(m[off+2:off+3])
            result |= ((cur & 0x7f) << 14) 
            size += 1
            if cur > 0x7f :
                cur = ord(m[off+3:off+4])
                result |= ((cur & 0x7f) << 21) 
                size += 1
                if cur > 0x7f :
                    cur = ord(m[off+4:off+5])
                    result |= (cur << 28)
                    size += 1
    return result, size

def encoded_field(mmap, offset):
    myoff = offset

    field_idx_diff, size = uleb128_value(mmap, myoff)
    myoff += size
    access_flags, size = uleb128_value(mmap, myoff)
    myoff += size

    size = myoff - offset

    return [field_idx_diff, access_flags, size]

def encoded_method(mmap, offset):
    myoff = offset

    method_idx_diff, size = uleb128_value(mmap, myoff)
    myoff += size
    access_flags, size = uleb128_value(mmap, myoff)
    myoff += size
    code_off, size = uleb128_value(mmap, myoff)
    myoff += size

    size = myoff - offset

    return [method_idx_diff, access_flags, code_off, size]

def encoded_annotation(mmap, offset):
    myoff = offset

    type_idx_diff, size = uleb128_value(mmap, myoff)
    #print hex(type_idx_diff), size
    myoff += size
    size_diff, size = uleb128_value(mmap, myoff)
    #print hex(size_diff), size
    myoff += size
    name_idx_diff, size = uleb128_value(mmap, myoff)
    #print hex(name_idx_diff)
    myoff += size
    value_type = mmap[myoff:myoff+1]
    encoded_value = mmap[myoff+1:myoff+2]

    return [type_idx_diff, size_diff, name_idx_diff, value_type, encoded_value]

class Dex:

    def __init__(self, filedir):
        f = open(filedir, 'r+b')
        m = mmap.mmap(f.fileno(), 0, access=mmap.ACCESS_WRITE)

        self.mmap = m

        magic           = m[0:8]
        checksum        = struct.unpack('<L', m[8:0xC])[0]
        signiture       = m[0xC:0x20]
        file_size       = struct.unpack('<L', m[0x20:0x24])[0]
        header_size     = struct.unpack('<L', m[0x24:0x28])[0]
        endian_tag      = struct.unpack('<L', m[0x28:0x2C])[0]
        link_size       = struct.unpack('<L', m[0x2C:0x30])[0]
        link_off        = struct.unpack('<L', m[0x30:0x34])[0]
        map_off         = struct.unpack('<L', m[0x34:0x38])[0]
        string_ids_size = struct.unpack('<L', m[0x38:0x3C])[0]		
        string_ids_off  = struct.unpack('<L', m[0x3C:0x40])[0]
        type_ids_size   = struct.unpack('<L', m[0x40:0x44])[0]
        type_ids_off    = struct.unpack('<L', m[0x44:0x48])[0]
        proto_ids_size  = struct.unpack('<L', m[0x48:0x4C])[0]
        proto_ids_off   = struct.unpack('<L', m[0x4C:0x50])[0]
        field_ids_size  = struct.unpack('<L', m[0x50:0x54])[0]
        field_ids_off   = struct.unpack('<L', m[0x54:0x58])[0]
        method_ids_size = struct.unpack('<L', m[0x58:0x5C])[0]
        method_ids_off  = struct.unpack('<L', m[0x5C:0x60])[0]
        class_defs_size = struct.unpack('<L', m[0x60:0x64])[0]
        class_defs_off  = struct.unpack('<L', m[0x64:0x68])[0]
        data_size       = struct.unpack('<L', m[0x68:0x6C])[0]
        data_off		= struct.unpack('<L', m[0x6C:0x70])[0]

        header_data = {}
        
        header_data['magic'          ] = magic
        header_data['checksum'       ] = checksum
        header_data['signiture'      ] = signiture
        header_data['file_size'      ] = file_size
        header_data['header_size'    ] = header_size
        header_data['endian_tag'     ] = endian_tag
        header_data['link_size'      ] = link_size
        header_data['link_off'       ] = link_off
        header_data['map_off'        ] = map_off
        header_data['string_ids_size'] = string_ids_size
        header_data['string_ids_off' ] = string_ids_off
        header_data['type_ids_size'  ] = type_ids_size
        header_data['type_ids_off'   ] = type_ids_off
        header_data['proto_ids_size' ] = proto_ids_size
        header_data['proto_ids_off'  ] = proto_ids_off
        header_data['field_ids_size' ] = field_ids_size
        header_data['field_ids_off'  ] = field_ids_off
        header_data['method_ids_size'] = method_ids_size
        header_data['method_ids_off' ] = method_ids_off
        header_data['class_defs_size'] = class_defs_size
        header_data['class_defs_off' ] = class_defs_off
        header_data['data_size'      ] = data_size
        header_data['data_off'       ] = data_off
        
        self.header = header_data
        self.classdef_list = []
        self.typeid_list = []
        self.string_list = []
        self.method_list = []
        self.typeid_list = []
        self.classdef_list = self.get_classdef_list()
        self.typeid_list = self.get_typeid_list()
        self.string_list = self.get_string_list()
        self.method_list = self.get_method_list()
        self.typeid_list = self.get_typeid_list()
    
    def mmapdata(self):
        return self.mmap

    def header_info(self):
        return self.header

    def checksum(self):
        return "%x" % self.header["checksum"]

    def get_string_list(self):
        if self.string_list:
            return self.string_list

        string_ids_size = self.header['string_ids_size']
        string_ids_off  = self.header['string_ids_off']

        for i in range(string_ids_size):
            off = struct.unpack('<L', self.mmap[string_ids_off + (i*4) : string_ids_off + (i*4) + 4 ])[0]
            c_size, u1eb12b_length = uleb128_value(self.mmap, off)
            c_char = self.mmap[off+u1eb12b_length:off+u1eb12b_length+c_size]
            self.string_list.append(c_char)

        return self.string_list

        def get_typeid_list(self):
            if self.typeid_list:
                return self.typeid_list
            type_ids_size = self.header['type_ids_size']
            type_ids_off  = self.header['type_ids_off']

            for i in range(type_ids_size):
                idx = struct.unpack('<L', self.mmap[type_ids_off + (i*4) : type_ids_off + (i*4) + 4])[0]
                self.typeid_list.append(idx)

            return self.typeid_list

    def get_typeid_list(self):
        if self.typeid_list:
            return self.typeid_list
        type_ids_size = self.header['type_ids_size']
        type_ids_off  = self.header['type_ids_off']

        for i in range(type_ids_size):
            idx = struct.unpack('<L', self.mmap[type_ids_off + (i*4) : type_ids_off + (i*4) + 4])[0]
            self.typeid_list.append(idx)
            
        return self.typeid_list

    def get_classdef_list(self):
        if self.classdef_list:
            return self.classdef_list
        class_defs_off = self.header['class_defs_off']
        class_defs_size = self.header['class_defs_size']

        for i in range(class_defs_size):
            class_idx = struct.unpack('<L', self.mmap[class_defs_off+(i*32)   :class_defs_off+(i*32)+4])[0]
            access_flag = struct.unpack('<L', self.mmap[class_defs_off+(i*32)+4 :class_defs_off+(i*32)+8])[0]
            superclass_idx = struct.unpack('<L', self.mmap[class_defs_off+(i*32)+8 :class_defs_off+(i*32)+12])[0]
            interfaces_off = struct.unpack('<L', self.mmap[class_defs_off+(i*32)+12:class_defs_off+(i*32)+16])[0]
            source_file_idx = struct.unpack('<L', self.mmap[class_defs_off+(i*32)+16:class_defs_off+(i*32)+20])[0]
            annotation_off 	= struct.unpack('<L', self.mmap[class_defs_off+(i*32)+20:class_defs_off+(i*32)+24])[0]
            class_data_off = struct.unpack('<L', self.mmap[class_defs_off+(i*32)+24:class_defs_off+(i*32)+28])[0]
            static_values_off = struct.unpack('<L', self.mmap[class_defs_off+(i*32)+28:class_defs_off+(i*32)+32])[0]
            sorted_access = [i for i in disassembler.ACCESS_ORDER if i & access_flag]
            self.classdef_list.append([class_idx, [disassembler.access_flag_classes[flag] for flag in sorted_access], superclass_idx, interfaces_off, source_file_idx, annotation_off, class_data_off, static_values_off])
        return self.classdef_list
    
    def get_method_list(self):
        if self.method_list:
            return self.method_list

        method_ids_size = self.header['method_ids_size']
        method_ids_off  = self.header['method_ids_off']

        for i in range(method_ids_size):
            class_idx = struct.unpack('<H', self.mmap[method_ids_off+(i*8)  :method_ids_off+(i*8)+2])[0]
            proto_idx = struct.unpack('<H', self.mmap[method_ids_off+(i*8)+2:method_ids_off+(i*8)+4])[0]
            name_idx  = struct.unpack('<L', self.mmap[method_ids_off+(i*8)+4:method_ids_off+(i*8)+8])[0]
            self.method_list.append([class_idx, proto_idx, name_idx])

        return self.method_list

    def get_classdata(self, offset):
        static_field_list = []
        instance_field_list = []
        direct_method_list = []
        virtual_method_list = []

        static_fields, sf_size = uleb128_value(self.mmap, offset)
        offset += sf_size 
        instance_fields, if_size = uleb128_value(self.mmap, offset)
        offset += if_size
        direct_methods, dm_size = uleb128_value(self.mmap, offset)
        offset += dm_size
        virtual_methods, vm_size = uleb128_value(self.mmap, offset)
        offset += vm_size
        
        for i in range(static_fields):
            field_idx_diff, access_flags, size = encoded_field(self.mmap, offset)
            if i == 0:
                diff = field_idx_diff
            else:
                diff += field_idx_diff

            static_field_list.append([diff, access_flags])
            offset += size

        #print static_field_list

        for i in range(instance_fields):
            field_idx_diff, access_flags, size = encoded_field(self.mmap, offset)
            if i == 0:
                diff = field_idx_diff
            else:
                diff += field_idx_diff

            instance_field_list.append([diff, access_flags])
            offset += size
        #print instance_field_list


        for i in range(direct_methods):
            method_idx_diff, access_flags, code_off, size = encoded_method(self.mmap, offset)
            if i == 0:
                diff = method_idx_diff
            else:
                diff += method_idx_diff

            direct_method_list.append([diff, access_flags, code_off])
            offset += size
        #print direct_method_list

        for i in range(virtual_methods):
            method_idx_diff, access_flags, code_off, size = encoded_method(self.mmap, offset)
            if i == 0:
                diff = method_idx_diff
            else:
                diff += method_idx_diff

            virtual_method_list.append([diff, access_flags, code_off])
            offset += size
        #print virtual_method_list

        return [static_field_list, instance_field_list, direct_method_list, virtual_method_list]

    def get_classdef(self, cname):
        list_size = len(self.classdef_list)
        for i in range(list_size):
            classdef  = self.classdef_list[i]
            class_idx = classdef[0]
            typeid = self.typeid_list[class_idx]
            if str(self.string_list[typeid])[2:-1] == cname:
                return i, classdef
        return -1, []

    def get_method_sig(self, protoidx):
        protoid_list_off = self.header["proto_ids_off"]
        protoid_list_size = self.header["proto_ids_size"]
        #get DexProtoId
        shorty_idx      = struct.unpack('<L', self.mmap[protoid_list_off+(protoidx*12)  :protoid_list_off+(protoidx*12)+ 4])[0]
        return_type_idx = struct.unpack('<L', self.mmap[protoid_list_off+(protoidx*12)+4:protoid_list_off+(protoidx*12)+ 8])[0]
        param_off       = struct.unpack('<L', self.mmap[protoid_list_off+(protoidx*12)+8:protoid_list_off+(protoidx*12)+12])[0]
        #get return type
        return_type = str(self.string_list[self.typeid_list[return_type_idx]])[2:-1]
        #get argument type
        arg_num = self.mmap[param_off]
        sig = "("
        for i in range(arg_num):
            typeidx = struct.unpack("<H", self.mmap[param_off + 4 + i*2 : param_off + 6 + i*2])[0]
            sig += str(self.string_list[self.typeid_list[typeidx]])[2:-1]
        sig += ")"
        sig += return_type
        return sig

    def find_dexmethod(self, method_list, fname, sig):
        list_size = len(method_list)
        for i in range(list_size):
            dexmethod = method_list[i]
            protoidx = self.method_list[dexmethod[0]][1]
            nameidx = self.method_list[dexmethod[0]][2]
            if str(self.string_list[nameidx])[2:-1] != fname:
                continue
            if self.get_method_sig(protoidx) == sig:
                return i, dexmethod
        return -1, []
    
    def get_dexmethod_off_from_classdata(self, classdata_off, fname, sig):
        offset = classdata_off

        static_fields, sf_size = uleb128_value(self.mmap, offset)
        offset += sf_size 
        instance_fields, if_size = uleb128_value(self.mmap, offset)
        offset += if_size
        direct_methods, dm_size = uleb128_value(self.mmap, offset)
        offset += dm_size
        virtual_methods, vm_size = uleb128_value(self.mmap, offset)
        offset += vm_size
        
        for i in range(static_fields):
            field_idx_diff, access_flags, size = encoded_field(self.mmap, offset)
            if i == 0:
                diff = field_idx_diff
            else:
                diff += field_idx_diff
            offset += size

        for i in range(instance_fields):
            field_idx_diff, access_flags, size = encoded_field(self.mmap, offset)
            if i == 0:
                diff = field_idx_diff
            else:
                diff += field_idx_diff
            offset += size

        for i in range(direct_methods):
            method_idx_diff, access_flags, code_off, size = encoded_method(self.mmap, offset)
            if i == 0:
                diff = method_idx_diff
            else:
                diff += method_idx_diff
            protoidx = self.method_list[diff][1]
            nameidx = self.method_list[diff][2]
            if str(self.string_list[nameidx])[2:-1] == fname:
                if self.get_method_sig(protoidx) == sig:
                    return diff, offset
            offset += size

        for i in range(virtual_methods):
            method_idx_diff, access_flags, code_off, size = encoded_method(self.mmap, offset)
            if i == 0:
                diff = method_idx_diff
            else:
                diff += method_idx_diff
            protoidx = self.method_list[diff][1]
            nameidx = self.method_list[diff][2]
            if str(self.string_list[nameidx])[2:-1] == fname:
                if self.get_method_sig(protoidx) == sig:
                    return diff, offset
            offset += size

        return -1, -1

    def save(self):
        self.mmap.close()

    def set_access_flags(self, offset, accessflags, lens):
        write_size = 0
        #print("%x" % ((accessflags & 0x7f) + 0x80))
        while accessflags > 127:
            self.mmap[offset : offset + 1] = struct.pack("B", 0x80 + (accessflags & 0x7f))
            write_size += 1
            accessflags = accessflags >> 7
            offset += 1
        self.mmap[offset : offset + 1] = struct.pack("B", accessflags)
        write_size += 1
        offset += 1
        while write_size < lens:
            if write_size < lens - 1:
                self.mmap[offset : offset + 1] = struct.pack("B", 0x80)
            else:
                self.mmap[offset : offset + 1] = struct.pack("B", 0x00)
            offset += 1
            write_size += 1
        
    def update_checksum(self):
        checkdata = self.mmap[12:]
        checksum = zlib.adler32(checkdata)
        self.mmap[8:12] = struct.pack('<I',checksum & 0xffffffff)

    def update_signature(self):
        sigdata = self.mmap[32:]
        sha1 = hashlib.sha1()
        sha1.update(sigdata)
        signature = sha1.digest()
        self.mmap[12 : 32] = struct.pack("20s", signature)

    #change java funtion to native funtion
    def java2native(self, cname, fname, sig):
        classdef_index, classdef = self.get_classdef(cname)
        classdata_off = classdef[6]
        methodid_index, dexmethod_offset = self.get_dexmethod_off_from_classdata(classdata_off, fname, sig)
        #print(classdef_index, methodid_index, dexmethod_offset)
        #logging.info("classdef_index: %d" % classdef_index)
        #logging.info("methodid_index: %d" % methodid_index)
        #logging.info("dexmethod_offset: %d" % dexmethod_offset)
        #modify
        methodidx, size = uleb128_value(self.mmap, dexmethod_offset)
        dexmethod_offset += size
        accessflags, asize = uleb128_value(self.mmap, dexmethod_offset)
        codeoff, csize = uleb128_value(self.mmap, dexmethod_offset + asize)
        #logging.info("codeoff: %d" % codeoff)
        self.set_access_flags(dexmethod_offset, accessflags | 0x100, asize + csize)
        return codeoff




        
