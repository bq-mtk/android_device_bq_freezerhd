LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),freezerhd)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
