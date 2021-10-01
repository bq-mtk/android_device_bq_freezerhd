#
#  This file is part of the OrangeFox Recovery Project
#  Copyright (C) 2019-2020 The OrangeFox Recovery Project
# 
#  OrangeFox is free software: you can redistribute it and/or modifyblock
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  any later version.
#
#  OrangeFox is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  This software is released under GPL version 3 or any later version.
#  See <http://www.gnu.org/licenses/>.
#  
#  Please maintain this if you use this script or any part of it
#

FDEVICE="freezerhd"

# shamu specific
export OF_DISABLE_MIUI_SPECIFIC_FEATURES="1"
export OF_FLASHLIGHT_ENABLE="0"
export OF_MAINTAINER="jmpfbmx"
export OF_TWRP_COMPATIBILITY_MODE="1"

# R11
export FOX_R11="1"
export FOX_BUILD_TYPE="Beta"
export FOX_VERSION="R11.0"
export FOX_ADVANCED_SECURITY="1"
export OF_USE_TWRP_SAR_DETECT="1"
export OF_DISABLE_MIUI_OTA_BY_DEFAULT="1"

# Common
export TARGET_ARCH="arm64"
export ALLOW_MISSING_DEPENDENCIES="true"
export LC_ALL="C"
export PLATFORM_VERSION="16.1.0"
export PLATFORM_SECURITY_PATCH="2099-12-31"
export TW_DEFAULT_LANGUAGE="en"
export OF_USE_MAGISKBOOT="1"
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="1"
export OF_DONT_PATCH_ENCRYPTED_DEVICE="1"
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER="1"
export OF_NO_TREBLE_COMPATIBILITY_CHECK="1"
export FOX_USE_LZMA_COMPRESSION="1"
export LZMA_RAMDISK_TARGETS="recovery"
export FOX_DELETE_AROMAFM="1"
export FOX_USE_BASH_SHELL="1"
export FOX_ASH_IS_BASH="1"
export OF_USE_NEW_MAGISKBOOT="1"
export OF_NO_SPLASH_CHANGE="1"
export FOX_REMOVE_AAPT="1"
export OF_DISABLE_DM_VERITY_FORCED_ENCRYPTION="0"
export FOX_USE_NANO_EDITOR="1"
export OF_KEEP_DM_VERITY_FORCED_ENCRYPTION="1"

# OTA for custom ROMs
export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES="0"
export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR="1"

add_lunch_combo omni_"$FDEVICE"-eng
