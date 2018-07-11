#include <jni.h>
#include "Butcher.h"
#include "log.h"
#include "object.h"
#include "core.h"
#include <vector>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "data.h"


//TODO encrypt this string

int decryptAndParse(const char *data, std::vector<MethodInfo> &methodList)
{
    //TODO: first decrypt
    int num = 0;
    char *point = data;
    while ((*point >= '0') && (*point <= '9')) {
        num = num * 10 + (*point++ - '0');
    }
    for (int i = 0 ; i < num; i++) {
        MethodInfo method;
        //discard 'L'
        point++;
        while (*point != ';') { 
            method.className.append(1, *point++);
        }
        //discard ';'
        point++;
        while (*point != '(') {
            method.methodName.append(1, *point++);
        }
        while (*point != ')') {
            method.signature.append(1, *point++);
        }
        while (*point != ';') {
            method.signature.append(1, *point++);
        }
        method.signature.append(1, *point++);
        int codeoff = 0;
        while ((*point >= '0') && (*point <= '9') ) {
            codeoff = codeoff * 10 + (*point++ - '0');
        }
        method.codeoff = codeoff;
        methodList.push_back(method);
    }
    return 0;
}

bool dalvikOrArt()
{
    int pid = getpid();
    char path[32];
    memset(path, 0 ,32);
    snprintf(path, 32, "/proc/%d/maps", pid);
    FILE *jarfile = fopen(path, "r");
    char buffer[256];
    while (fgets(buffer, 256, jarfile)) {
        if (strstr(buffer, "/system/lib/libdvm.so")) {
            fclose(jarfile);
            return false;
        }
        if (strstr(buffer, "/system/lib/libart.so")) {
            fclose(jarfile);
            return true;
        }
        if (strstr(buffer, "/system/lib/libaoc.so")) {
            fclose(jarfile);
            return true;
        }
    }
    return false;
}

char *getDexFileAddress(Method *method) 
{
    DexFileStruct* dexFileStruct = (DexFileStruct*)(method->prototype.dexFile);
    return dexFileStruct->pHeader;
}

void resumeArt(JNIEnv *env, const std::vector<MethodInfo> &methodList)
{

}

void resumeDalvik(JNIEnv *env, const std::vector<MethodInfo> &methodList)
{
    for (const auto &method : methodList) {
        LOGI("resume class: %s" ,method.className.c_str());
        LOGI("resume method: %s", method.methodName.c_str());
        LOGI("resume method signature: %s", method.signature.c_str());
        LOGI("resume method codeoff: %d", method.codeoff);

        jclass clazz = env->FindClass(method.className.c_str());
        Method *methodId = (Method *)env->GetMethodID(clazz, method.methodName.c_str(), method.signature.c_str());
        env->ExceptionClear();
        if (!methodId) {
            methodId = (Method *)env->GetStaticMethodID(clazz, method.methodName.c_str(), method.signature.c_str());
            env->ExceptionClear();
        }
        u1 *dexFileAddress = getDexFileAddress(methodId);
        DexCodeStruct* dexCode = (DexCodeStruct*)(dexFileAddress + method.codeoff);
        CLEAR_METHOD_FLAG(methodId,ACC_NATIVE);
        methodId->insns = dexCode->insns;
        methodId->registersSize = dexCode->registersSize;
        methodId->insSize = dexCode->insSize;
        methodId->outsSize = dexCode->outsSize;
    }
}

extern "C" void resume(JNIEnv *env) 
{
    bool isArt = dalvikOrArt();
    std::vector<MethodInfo> methodList;
    decryptAndParse(encryptedData, methodList);

    if (isArt) {
        resumeArt(env, methodList);
    }
    else {
        resumeDalvik(env, methodList);
    }
}
