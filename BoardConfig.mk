# Use the non-open-source parts, if they're present
-include vendor/bq/freezerhd/BoardConfigVendor.mk

DEVICE_PATH := device/bq/freezerhd

# Platform
TARGET_BOARD_PLATFORM := mt8163
TARGET_BOARD_PLATFORM_GPU := mali-720mp2

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Headers
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# 64 bit binder
TARGET_USES_64_BIT_BINDER := true

# Kernel Config
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := $(shell pwd)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-gnu-6.3.1/bin/aarch64-linux-gnu-
TARGET_KERNEL_CONFIG := lineage_freezerhd_defconfig
TARGET_KERNEL_SOURCE := kernel/bq/freezerhd

vendor_lkm_dir := vendor/bq/freezerhd/proprietary/vendor/lib/modules
BOARD_VENDOR_KERNEL_MODULES := \
    $(vendor_lkm_dir)/bt_drv.ko \
    $(vendor_lkm_dir)/fmradio_drv.ko \
    $(vendor_lkm_dir)/gps_drv.ko \
    $(vendor_lkm_dir)/wlan_drv_gen2.ko \
    $(vendor_lkm_dir)/wmt_chrdev_wifi.ko \
    $(vendor_lkm_dir)/wmt_drv.ko

BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 buildvariant=userdebug
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := \
    --pagesize 2048 \
    --base 0x40078000 \
    --kernel_offset 0x00008000 \
    --ramdisk_offset 0x14f88000 \
    --second_offset 0x00e88000 \
    --tags_offset 0x13f88000 \
    --cmdline "$(BOARD_KERNEL_CMDLINE)"

BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml

# MediaTek
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true

# Charger
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/BOOT/BOOT/boot/boot_mode

# Vendor
BOARD_USES_VENDORIMAGE := true

# Bootanimation
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Wi-Fi
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_P2P := P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0

# Bluetooth
BOARD_HAS_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Power
TARGET_TAP_TO_WAKE_NODE := "/proc/gesture_open"

# Graphics
BOARD_EGL_CFG := $(DEVICE_PATH)/egl.cfg
TARGET_USES_HWC2 := true
TARGET_USES_HWC2ON1ADAPTER := false
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := false

# Panel vsync offsets
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0

# Partition size(s)
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_CACHEIMAGE_PARTITION_SIZE := 444596224
BOARD_VENDORIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11865161728

TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_SYSTEM := system

# Filesystem
TARGET_USES_MKE2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4

# FS Config
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# OTAs
BLOCK_BASED_OTA := true
TARGET_OTA_ASSERT_DEVICE := freezerhd

# SELinux
SELINUX_IGNORE_NEVERALLOWS := true
BOARD_SEPOLICY_DIRS += \
        $(DEVICE_PATH)/sepolicy/mtk/basic/non_plat \
        $(DEVICE_PATH)/sepolicy/mtk/bsp/non_plat \
        $(DEVICE_PATH)/sepolicy/mt8163/basic \
        $(DEVICE_PATH)/sepolicy/mt8163/bsp \
        $(DEVICE_PATH)/sepolicy

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
        $(DEVICE_PATH)/sepolicy/mtk/basic/plat_public \
        $(DEVICE_PATH)/sepolicy/mtk/bsp/plat_public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
        $(DEVICE_PATH)/sepolicy/mtk/basic/plat_private \
        $(DEVICE_PATH)/sepolicy/mtk/bsp/plat_private

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file

# Gatekeeper
BOARD_USE_SOFT_GATEKEEPER := true

# Charger
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

# Manifest
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/manifest.xml
DEVICE_MATRIX_FILE   := $(DEVICE_PATH)/configs/compatibility_matrix.xml

# Camera
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY := libcamera_parameters_mtk

# Properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab

# Shims
TARGET_LD_SHIM_LIBS := \
    /vendor/lib/libMtkOmxVenc.so|libshim_fence.so \
    /vendor/lib/libMtkOmxVdecEx.so|libshim_fence.so \
    /system/lib/libshowlogo.so|libshim_gui.so \
    /vendor/bin/mnld|libshim_pthread.so

# Treble
BOARD_VNDK_VERSION := current
BOARD_VNDK_RUNTIME_DISABLE := true
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_VENDOR_MOVE_ENABLED := true
