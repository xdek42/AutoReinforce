LOCAL_PATH := $(call my-dir)   

include $(CLEAR_VARS)          
LOCAL_MODULE    := reinforce   
LOCAL_SRC_FILES := DexPacker.cpp DexLoader.cpp
LOCAL_LDLIBS    := -llog -landroid
LOCAL_CFLAGS	:= -fpermissive -w  -std=c++11
include $(BUILD_SHARED_LIBRARY) 