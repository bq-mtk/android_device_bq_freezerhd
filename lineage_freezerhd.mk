#
# Copyright (C) 2019-2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l.mk)

# Inherit from freezerhd device
$(call inherit-product, device/bq/freezerhd/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := bq
PRODUCT_DEVICE := freezerhd
PRODUCT_NAME := lineage_freezerhd
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris M10 HD
PRODUCT_MANUFACTURER := bq

PRODUCT_GMS_CLIENTID_BASE := android-bq

# Set product device & name
PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=freezerhd \
   PRIVATE_BUILD_DESC="full_bq_aquaris_m10-user 8.1.0 O11019 1546079538 release-keys"

BUILD_FINGERPRINT=bq/Aquaris_M10/Aquaris_M10:8.1.0/O11019/1546079533:user/release-keys
