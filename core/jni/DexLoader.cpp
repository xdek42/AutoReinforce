#include <jni.h>
#include "DexLoader.h"
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <dirent.h>
#include <sys/stat.h>
#include "log.h"

int DexLoader::sdk_init() 
{
    jclass clazz = env->FindClass("android/os/Build$VERSION");
    jfieldID field = env->GetStaticFieldID(clazz, "SDK_INT", "I");
    int ret = env->GetStaticIntField(clazz, field);
    env->DeleteLocalRef(clazz);
    return ret;
}

char *DexLoader::jstring2str(jstring jstr)
{
    char *rtn = NULL;
    jclass clsstring = env->FindClass("java/lang/String");
    jstring strencode = env->NewStringUTF("GB2312");
    jmethodID mid = env->GetMethodID(clsstring, "getBytes", "(Ljava/lang/String;)[B");
    jbyteArray barr = (jbyteArray)env->CallObjectMethod(jstr, mid, strencode);
    jsize alen = env->GetArrayLength(barr);
    jbyte *ba = env->GetByteArrayElements(barr, JNI_FALSE);
    if (alen > 0)
    {
        rtn = (char *)malloc(alen + 1);
        memcpy(rtn, ba, alen);
        rtn[alen] = 0;
    }
    env->ReleaseByteArrayElements(barr, ba, 0);
    return rtn;
}

int DexLoader::handleException()
{
    jthrowable exception = env->ExceptionOccurred();
    if (exception)
    {
        env->ExceptionClear();
        LOGI("[handleException] exception occured");
        jclass clazz = env->GetObjectClass(exception);
        jmethodID getMessage = env->GetMethodID(clazz, "getMessage", "()Ljava/lang/String;");
        jstring message = (jstring)env->CallObjectMethod(exception, getMessage);
        LOGI("error message is: %s", jstring2str(message));
        env->ExceptionClear();
        return 1;
    }
    return 0;
}

void DexLoader::makeDexElements(jobject classLoader, jobject dexFileobj)
{
    jclass PathClassLoader = env->GetObjectClass(classLoader);

    jclass BaseDexClassLoader = env->GetSuperclass(PathClassLoader);


    //get pathList fieldid
    jfieldID pathListid = env->GetFieldID(BaseDexClassLoader, "pathList", "Ldalvik/system/DexPathList;");
    jobject pathList = env->GetObjectField(classLoader, pathListid);

    //get DexPathList Class 
    jclass DexPathListClass = env->GetObjectClass(pathList);
    //get dexElements fieldid
    jfieldID dexElementsid = env->GetFieldID(DexPathListClass, "dexElements", "[Ldalvik/system/DexPathList$Element;");

    //get dexElement array value
    jobjectArray dexElement = static_cast<jobjectArray>(env->GetObjectField(pathList, dexElementsid));


    //get DexPathList$Element Class construction method and get a new DexPathList$Element object 
    jint len = env->GetArrayLength(dexElement);


    jclass ElementClass = env->FindClass("dalvik/system/DexPathList$Element");// dalvik/system/DexPathList$Element
    jmethodID Elementinit = env->GetMethodID(ElementClass, "<init>", "(Ljava/io/File;ZLjava/io/File;Ldalvik/system/DexFile;)V");
    jboolean isDirectory = JNI_FALSE;
    jobject element_obj = env->NewObject(ElementClass, Elementinit, nullptr, isDirectory, nullptr, dexFileobj);

    //Get dexElement all values and add  add each value to the new array
    jobjectArray new_dexElement = env->NewObjectArray(len + 1, ElementClass, nullptr);
    for (int i = 0; i < len; ++i)
    {
        env->SetObjectArrayElement(new_dexElement, i, env->GetObjectArrayElement(dexElement, i));
    }
    //then set dexElement 

    env->SetObjectArrayElement(new_dexElement, len, element_obj);
    env->SetObjectField(pathList, dexElementsid, new_dexElement);

    env->DeleteLocalRef(element_obj);
    env->DeleteLocalRef(ElementClass);
    env->DeleteLocalRef(dexElement);
    env->DeleteLocalRef(DexPathListClass);
    env->DeleteLocalRef(pathList);
    env->DeleteLocalRef(BaseDexClassLoader);
    env->DeleteLocalRef(PathClassLoader);
}

//TODO:support more android version, now only support android5.1
void DexLoader::loadDexArt(const char *dexPath, const char *oatPath, jobject classLoader) 
{
    if (access(oatPath, F_OK) == -1) {
        LOGI("we don't have oat file, and we don't create it");
        char cmd[256] = {0};
        sprintf(cmd, "dex2oat --dex-file=%s --oat-file=%s --instruction-set=arm --boot-image=/system/framework/boot.art ", dexPath, oatPath);
        int ret = system(cmd);
    }
    jstring infile = env->NewStringUTF(dexPath);
    jstring outfile = env->NewStringUTF(oatPath);
    jclass DexFile = env->FindClass("dalvik/system/DexFile");
    jmethodID loadDex = env->GetStaticMethodID(DexFile, "loadDex", "(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;");
    handleException();
    jobject dexFile = env->CallStaticObjectMethod(DexFile, loadDex, infile, outfile, 0);
    handleException();
    makeDexElements(classLoader, dexFile);   


    env->DeleteLocalRef(infile);
    env->DeleteLocalRef(outfile);
    env->DeleteLocalRef(DexFile);
    env->DeleteLocalRef(dexFile);
}

void DexLoader::loadDexDalvik(const char *dexPath, const char *oatPath, jobject classLoader)
{
    jstring infile = env->NewStringUTF(dexPath);
    jstring outfile = env->NewStringUTF(oatPath);
    jclass DexFile = env->FindClass("dalvik/system/DexFile");
    jmethodID loadDex = env->GetStaticMethodID(DexFile, "loadDex", "(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;");
    handleException();
    jobject dexFile = env->CallStaticObjectMethod(DexFile, loadDex, infile, outfile, 0);
    handleException();
    makeDexElements(classLoader, dexFile);   


    env->DeleteLocalRef(infile);
    env->DeleteLocalRef(outfile);
    env->DeleteLocalRef(DexFile);
    env->DeleteLocalRef(dexFile);
}