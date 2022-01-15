LOCAL_PATH := $(call my-dir)

# Fence Destructor Shim
include $(CLEAR_VARS)
LOCAL_MODULE := libshims_fence
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := fence/libshim_fence.cpp
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)
