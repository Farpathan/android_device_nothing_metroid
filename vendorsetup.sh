#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2024 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#

# Target Architecture
export TARGET_ARCH="arm64"

# About Us
export FOX_VERSION="RTest1"
export OF_MAINTAINER="Gigaachad"
export FOX_BUILD_TYPE="Stable"

# Build Environment Stuff
export FOX_BUILD_DEVICE="Metroid"
export ALLOW_MISSING_DEPENDENCIES=true
export TARGET_DEVICE_ALT="Metroid,metroid"
export FOX_TARGET_DEVICES="Metroid,metroid"
export TW_DEFAULT_LANGUAGE="en"
export LC_ALL="C"
export OF_OPTIONS_LIST_NUM=8

# Use Magisk Boot for Patching
export OF_USE_MAGISKBOOT=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1

# We Have A/B Partitions
export FOX_AB_DEVICE=1
export FOX_VIRTUAL_AB_DEVICE=1
export OF_AB_DEVICE_WITH_RECOVERY_PARTITION=1

# Screen Specifications
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_DEFAULT_KEYMASTER_VERSION=4.1
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_CLOCK_POS=0
export OF_SCREEN_H=2800
export OF_STATUS_H=120
# export FOX_USE_SPECIFIC_MAGISK_ZIP=/home/toor/Magisk-v28.0.apk  # Commented: hardcoded path won't work on other systems

# Device Stuff
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_FBE_METADATA_MOUNT_IGNORE=1
export OF_PATCH_AVB20=1
export FOX_USE_NANO_EDITOR=1
export FOX_ENABLE_APP_MANAGER=0
export FOX_DELETE_AROMAFM=1
export OF_DONT_PATCH_ON_FRESH_INSTALLATION=1
export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
export OF_NO_ADDITIONAL_MIUI_PROPS_CHECK=1
export OF_RUN_POST_FORMAT_PROCESS=1
export OF_USE_LEGACY_BATTERY_SERVICES=1
export FOX_USE_UPDATED_MAGISKBOOT=1
export OF_IGNORE_LOGICAL_MOUNT_ERRORS=1
export OF_DISABLE_OTA_MENU=1
export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
export OF_DYNAMIC_FULL_SIZE=9122611200			# Changed

# Quick Backup List
export FOX_R11=1
export OF_QUICK_BACKUP_LIST="/boot;/dtbo;/data;/system_image;/vendor_image;"

# Add Some Extras
export FOX_USE_ZIP_BINARY=1
export FOX_USE_TAR_BINARY=1
export FOX_ASH_IS_BASH=1
export FOX_REPLACE_BUSYBOX_PS=1
export FOX_USE_BASH_SHELL=1
export OF_USE_LZ4_COMPRESSION=1
export OF_DONT_KEEP_LOG_HISTORY=0
export OF_NO_SPLASH_CHANGE=1
export FOX_INSTALLER_DISABLE_AUTOREBOOT=1
export OF_USE_GREEN_LED=0
export FOX_RESET_SETTINGS=1
export FOX_USE_SED_BINARY=1
export FOX_USE_XZ_UTILS=1
export FOX_ENABLE_APP_MANAGER=1
export FOX_REPLACE_TOOLBOX_GETPROP=1
