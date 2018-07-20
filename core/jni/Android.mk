LOCAL_PATH := $(call my-dir)   

include $(CLEAR_VARS)          
LOCAL_MODULE    := loader   
LOCAL_SRC_FILES := DexPacker.cpp DexLoader.cpp AntiDebug.cpp
LOCAL_LDLIBS    := -llog -landroid
LOCAL_CFLAGS	:= -fpermissive -w  -std=c++11
include $(BUILD_SHARED_LIBRARY) 

include $(CLEAR_VARS)          
LOCAL_MODULE    := core 
LOCAL_SRC_FILES := core.cpp Butcher.cpp
LOCAL_LDLIBS    := -llog -landroid
LOCAL_CFLAGS	:= -fpermissive -w  -std=c++11
include $(BUILD_SHARED_LIBRARY) 
