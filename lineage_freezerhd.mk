# Device is 64 bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Android Go defaults
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from freezerhd device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := bq
PRODUCT_DEVICE := freezerhd
PRODUCT_MANUFACTURER := bq
PRODUCT_NAME := lineage_freezerhd
PRODUCT_MODEL := Aquaris M10 HD

PRODUCT_GMS_CLIENTID_BASE := android-bq
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_bq_aquaris_m10-user 8.1.0 O11019 1553500793 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := bq/Aquaris_M10/Aquaris_M10:8.1.0/O11019/1553500791:user/release-keys
