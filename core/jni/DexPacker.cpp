#include <jni.h>
#include <android/asset_manager.h>
#include <android/asset_manager_jni.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <dlfcn.h>
#include "DexLoader.h"
#include "log.h"
#include "AntiDebug.h"

#define NELEM(x) ((int)(sizeof(x) / sizeof((x)[0])))
#define JNIREG_CLASS "com/example/shellapplication/WrapperApplication"

static bool isArt = false;
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

void decryptJar(const char *jarPath, const char *dexPath)
{
    if (access(dexPath, F_OK) != -1) {
        return;
    }
    FILE *jarfile = fopen(jarPath, "r");
    fseek(jarfile, 0, SEEK_END);
    int dexLen = ftell(jarfile);
    unsigned char *encrypt = (unsigned char *)malloc(dexLen);
    memset(encrypt, 0, dexLen);
    fseek(jarfile, 0, SEEK_SET);
    fread(encrypt, 1, dexLen, jarfile);
    unsigned char *decrypt = (unsigned char *)malloc(dexLen);
    //decrypt jar
    for (int i = 0; i < dexLen; i++) {
        decrypt[i] = ~encrypt[i];
    }
    FILE *dexfile = fopen(dexPath, "w");
    fwrite(decrypt, 1, dexLen, dexfile);
    fclose(jarfile);
    fclose(dexfile);
}

void extractJar(JNIEnv *env, jobject obj, const char* jarPath)
{
    AAssetManager *mgr = NULL;
    if (access(jarPath, F_OK)) {
        jclass Application = env->GetObjectClass(obj);
        jmethodID getAssets = env->GetMethodID(Application, "getAssets", "()Landroid/content/res/AssetManager;");
        jobject assets = env->CallObjectMethod(obj, getAssets);
        mgr = AAssetManager_fromJava(env, assets);
        if (mgr == NULL) {
            LOGE("cannot get AssetsManager");
            return;
        }
        AAsset *asset = AAssetManager_open(mgr, "protected.jar", AASSET_MODE_STREAMING);
        int numBytesRead;
        if (asset) {
            FILE *file = fopen(jarPath, "w");
            void *buffer = malloc(1024);
            int i = 0;
            while (1)
            {
                numBytesRead = AAsset_read(asset, buffer, 1024);
                if (numBytesRead <= 0)
                    break;
                fwrite(buffer, 1, numBytesRead, file);
            }
            fclose(file);
            free(buffer);

            AAsset_close(asset);
        }
        else
        {
            LOGE("Error AAssetManager_open");
            return;
        }
    } 
}

void native_attachContextBaseContext(JNIEnv *env, jobject obj, jobject ctx)
{
    checkTracerPid();
    LOGI("shellapplication's attachContext execute");
    //super.attachBaseContext(base);  
    jclass ContextWrapper = env->FindClass("android/content/ContextWrapper");
    jmethodID attachBaseContext = env->GetMethodID(ContextWrapper, "attachBaseContext", "(Landroid/content/Context;)V");
    env->CallNonvirtualVoidMethod(obj, ContextWrapper, attachBaseContext, ctx);
    //Context.getFilesDir()
    jclass Application = env->GetObjectClass(obj);
    jmethodID getFilesDir = env->GetMethodID(Application, "getFilesDir", "()Ljava/io/File;");
    jobject file = env->CallObjectMethod(obj, getFilesDir);
    //get /data/data/appname/files dir
    jclass File =  env->GetObjectClass(file);
    jmethodID getAbsolutePath = env->GetMethodID(File, "getAbsolutePath", "()Ljava/lang/String;");
    const char *fileDir = env->GetStringUTFChars(env->CallObjectMethod(file, getAbsolutePath), 0);
    LOGI("fileDir: %s", fileDir);
    //get ClassLoader
    jmethodID getClassLoader = env->GetMethodID(Application, "getClassLoader", "()Ljava/lang/ClassLoader;");
    jobject classLoader = env->CallObjectMethod(obj, getClassLoader);
    //extract protected.jar
    char jarPath[256] = {0};
    sprintf(jarPath, "%s/protected.jar", fileDir);
    extractJar(env, obj, jarPath);
    isArt = dalvikOrArt();
    //decrypt protected.jar 
    char dexPath[256] = {256};
    sprintf(dexPath, "%s/origin.dex", fileDir);
    decryptJar(jarPath, dexPath);

    //dynamic load dex
    DexLoader dexLoader(env);
    char optPath[256] = {0};
    sprintf(optPath, "%s/protected.so", fileDir);
    if (isArt) {
        dexLoader.loadDexArt(dexPath, optPath, classLoader);
    }
    else {
        dexLoader.loadDexDalvik(dexPath, optPath, classLoader);
    }

    env->DeleteLocalRef(ContextWrapper);
    env->DeleteLocalRef(Application);
    env->DeleteLocalRef(file);
    env->DeleteLocalRef(File);
    env->DeleteLocalRef(classLoader);

    
}


void native_onCreate(JNIEnv *env, jobject obj)
{
    checkPort();
    jclass Context = env->FindClass("android/content/Context");
    jmethodID getPackageName = env->GetMethodID(Context, "getPackageName", "()Ljava/lang/String;");
    jobject mPackageName = env->CallObjectMethod(obj, getPackageName);
    const char *packageName = env->GetStringUTFChars(mPackageName, 0);

    LOGI("shellapplication's onCreate execute");
    char libPath[256] = {0};
    sprintf(libPath, "/data/data/%s/lib/libcore.so",  packageName);
    checkDlactivity();
    //TODO: load by ourself
    void *so = dlopen(libPath, RTLD_LAZY);
    void (*func)(JNIEnv *env) = dlsym(so, "resume");
    func(env);

    env->DeleteLocalRef(mPackageName);
    env->DeleteLocalRef(Context);
}

static JNINativeMethod method_table[] = {
    {"attachBaseContext", "(Landroid/content/Context;)V", (void *)native_attachContextBaseContext},
    {"onCreate", "()V", (void *)native_onCreate},
};

int register_ndk_load(JNIEnv *env)
{
    jclass clazz = env->FindClass(JNIREG_CLASS);
    if (clazz == 0) {
        return JNI_FALSE;
    }
    if (env->RegisterNatives(clazz, method_table, NELEM(method_table)) < 0) {
        return JNI_FALSE;
    }
    return JNI_TRUE;

}

JNIEXPORT jint JNI_OnLoad(JavaVM *vm, void *reserved)
{
    JNIEnv *env = 0;
    jint result = -1;
    LOGI("JNI_OnLoad execute");
    if (vm->GetEnv((void **)&env, JNI_VERSION_1_4) != JNI_OK) {
        LOGE("get JNIEnv failed");
        return result;
    }
    if (!register_ndk_load(env)) {
        LOGE("regist jni function failed");
        return result;
    }
    return JNI_VERSION_1_4;
}
