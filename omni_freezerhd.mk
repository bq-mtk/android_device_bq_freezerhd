# Inherit device configuration
$(call inherit-product, device/bq/freezerhd/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := freezerhd
PRODUCT_NAME := omni_freezerhd
PRODUCT_BRAND := bq
PRODUCT_MANUFACTURER := bq
PRODUCT_MODEL := Aquaris M10
