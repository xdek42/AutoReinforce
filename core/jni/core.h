#ifndef OBJECTH
#define OBJECTH

#include <stdint.h>
#include <jni.h>
#include <string>
#include "object.h"

struct MethodInfo {
    std::string className;
    std::string methodName;
    std::string signature;
    int codeoff;
};

struct DexFileStruct{
    u1* pOptHeader;
    u1* pHeader;
    u1* pStringIds;
    u1* pTypeIds;
    u1* pFieldIds;
    u1* pProtoIds;
    u1* pClassDefs;
    u1* pLinkData;
    u1* pClassLookUp;
    u1* pRegisterMapPool;
    u1* baseAddr;
    int overhead;
};

struct DexCodeStruct {
    u2 registersSize;
    u2 insSize;
    u2 outsSize;
    u2 triesSize;
    u4 debugInfoOff;
    u4 insnsSize;
    u2 insns[1];
};


#endif