LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_DEVICE),freezerhd)
include $(call all-makefiles-under,$(LOCAL_PATH))
include $(CLEAR_VARS)

CACHE_MOUNT_POINT := $(TARGET_OUT_VENDOR)/cache
NVDATA_SYMLINK := $(TARGET_OUT_VENDOR)/nvdata
PROTECT_F_MOUNT_POINT  := $(TARGET_OUT_VENDOR)/protect_f
PROTECT_S_MOUNT_POINT := $(TARGET_OUT_VENDOR)/protect_s
PERSIST_MOUNT_POINT := $(TARGET_OUT_VENDOR)/persist
SECRO_MOUNT_POINT := $(TARGET_OUT_VENDOR)/secro

$(CACHE_MOUNT_POINT):
	@echo "Creating $(CACHE_MOUNT_POINT)"
	@mkdir -p $(CACHE_MOUNT_POINT)

$(NVDATA_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "nvdata link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /data/nvram $@

$(PROTECT_F_MOUNT_POINT):
	@echo "Creating $(PROTECT_F_MOUNT_POINT)"
	@mkdir -p $(PROTECT_F_MOUNT_POINT)

$(PROTECT_S_MOUNT_POINT):
	@echo "Creating $(PROTECT_S_MOUNT_POINT)"
	@mkdir -p $(PROTECT_S_MOUNT_POINT)

$(PERSIST_MOUNT_POINT):
	@echo "Creating $(PERSIST_MOUNT_POINT)"
	@mkdir -p $(PERSIST_MOUNT_POINT)

$(SECRO_MOUNT_POINT):
	@echo "Creating $(SECRO_MOUNT_POINT)"
	@mkdir -p $(SECRO_MOUNT_POINT)


ALL_DEFAULT_INSTALLED_MODULES += \
	$(CACHE_MOUNT_POINT) $(NVDATA_SYMLINK) $(PROTECT_F_MOUNT_POINT) $(PROTECT_S_MOUNT_POINT)\
    $(SECRO_MOUNT_POINT) $(PERSIST_MOUNT_POINT)

KERNEL_OUT := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ

$(KERNEL_OUT):
	mkdir -p $(KERNEL_OUT)

INSTALLED_KERNEL_HEADERS: $(KERNEL_OUT)

endif
