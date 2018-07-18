#include <jni.h>
#include "Butcher.h"
#include "log.h"
#include "object.h"
#include "core.h"
#include <vector>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <dlfcn.h>
#include "data.h"


static int sdk_int = 0;

int decryptAndParse(std::vector<MethodInfo> &methodList)
{
    //decryted data
    int len = strlen(encryptedData);
    char *data = (char *)malloc(len + 1);
    data[len] = 0;
    for (int i = 0 ; i < len; i++) {
        data[i] = encryptedData[i] + 10;
    }
    //parser data
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

void resumeDalvik(JNIEnv *env, const std::vector<MethodInfo> &methodList)
{
    for (const auto &method : methodList) {
        LOGI("class: %s" ,method.className.c_str());
        LOGI("method: %s", method.methodName.c_str());
        LOGI("method signature: %s", method.signature.c_str());
        LOGI("method codeoff: %d", method.codeoff);

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

int getSdkint(JNIEnv *env)
{
    if (!sdk_int) {
        jclass Build_version = env->FindClass("android/os/Build$VERSION");
        jfieldID fieldID = env->GetStaticFieldID(Build_version, "SDK_INT", "I");
        sdk_int = env->GetStaticIntField(Build_version, fieldID);
        env->DeleteLocalRef(Build_version);
    }
    return sdk_int;
}


void resumeArt(JNIEnv *env, const std::vector<MethodInfo> &methodList)
{
    for (const auto &method : methodList) {
        LOGI("class: %s" ,method.className.c_str());
        LOGI("method: %s", method.methodName.c_str());
        LOGI("method signature: %s", method.signature.c_str());
        LOGI("method codeoff: %d", method.codeoff);
        jclass clazz = env->FindClass(method.className.c_str());
        u4 *methodId = (u4 *)env->GetMethodID(clazz, method.methodName.c_str(), method.signature.c_str());
        env->ExceptionClear();
        if (!methodId) {
            methodId = (u4 *)env->GetStaticMethodID(clazz, method.methodName.c_str(), method.signature.c_str());
            env->ExceptionClear();
        }
        void *libart = dlopen("libart.so", RTLD_LAZY);
        void *(*func)() = dlsym(libart, "art_quick_to_interpreter_bridge");
        if (func) {
                LOGI("find art_quick_to_interpreter_bridge: %x", func);
        }
        //TODO: support more sdk version
        if (sdk_int == 21) {
            LOGI("ArtMethod->entry_point_from_interpreter_: %x", (uint64_t *)(methodId + 4));
            LOGI("ArtMethod->entry_point_from_jni_: %x", (uint64_t *)(methodId + 6));
            LOGI("ArtMethod->entry_point_from_portable_compiled_code_: %x", (uint64_t *)(methodId + 8));
            LOGI("ArtMethod->entry_point_from_quick_compiled_code_: %x", (uint64_t *)(methodId + 10));
            LOGI("ArtMethod->access_flags_: %d", methodId[14]);
            LOGI("ArtMethod->dex_code_item_offset_: %d", methodId[15]);
            LOGI("ArtMethod->dex_method_index_: %d", methodId[16]);
            LOGI("ArtMethod->method_index_: %d", methodId[17]);
            methodId[14] &= ~(ACC_NATIVE);
            //repair dex_code_item_offset_
            methodId[15] = method.codeoff;
            //modify entry point
            methodId[10] = (int)func;
            methodId[11] = 0;
        }
        if (sdk_int == 22) {
            LOGI("ArtMethod->access_flags_: %d", methodId[5]);
            LOGI("ArtMethod->dex_code_item_offset_: %d", methodId[6]);
            LOGI("ArtMethod->dex_method_index_: %d", methodId[7]);
            LOGI("ArtMethod->method_index_: %d", methodId[8]);
            LOGI("ArtMethod->entry_point_from_interpreter_: %x", methodId[9]);
            LOGI("ArtMethod->entry_point_from_jni_: %x", methodId[10]);
            LOGI("ArtMethod->entry_point_from_quick_compiled_code_: %x", methodId[11]);
            LOGI("ArtMethod->entry_point_from_portable_compiled_code_: %x", methodId[12]);
            //clear native flag
            methodId[5] &= ~(ACC_NATIVE);
            //repair dex_code_item_offset_
            methodId[6] = method.codeoff;
            //modify entry point
            methodId[11] = (int)func;
        }
    }
}

extern "C" void resume(JNIEnv *env) 
{
    bool isArt = dalvikOrArt();
    std::vector<MethodInfo> methodList;
    decryptAndParse(methodList);
    getSdkint(env);
    if (isArt) {
        resumeArt(env, methodList);
    }
    else {
        resumeDalvik(env, methodList);
    }
}
