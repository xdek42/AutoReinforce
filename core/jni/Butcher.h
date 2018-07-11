#ifndef BUTCHERH
#define BUTCHERH
#include <jni.h>
#include "object.h"
class Butcher {
private:
    int a;
public:
    static void hookDalvikMethod(Method *method, void *hookedMethodCallback);
};



#endif