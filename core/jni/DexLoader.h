#ifndef DEXLOADER_H
#define DEXLOADER_H

#include <jni.h>

class DexLoader {
private:
    JNIEnv *env;
    int sdk_init();
    void makeDexElements(jobject classLoader, jobject dexFileobj);
    char *jstring2str(jstring jstr);
    int handleException();
public:
    DexLoader(JNIEnv *jni_env) { env = jni_env;}
    void loadDexArt(const char *dexPath, const char *oatPath, jobject classLoader);
    void loadDexDalvik(const char *dexPath, const char *oatPath, jobject classLoader);
};

#endif