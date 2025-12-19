#
# Copyright 2017 The Android Open Source Project
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

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

# Inherit from common
-include $(DEVICE_PATH)/BoardConfigCommon.mk

# Recovery
#TARGET_OTA_ASSERT_DEVICE := Metroid

# TWRP specific build flags
TW_FRAMERATE := 120

# Vibrator
TW_SUPPORT_INPUT_AIDL_HAPTICS := true
#TW_SUPPORT_INPUT_AIDL_HAPTICS_FIX_OFF := true

# Touch Input - Force TWRP to detect fts_ts touchscreen
TWRP_EVENT_LOGGING := true
TWRP_INCLUDE_LOGCAT := true
TW_INPUT_BLACKLIST := ""
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

TARGET_RECOVERY_DEVICE_MODULES += libexpat
RECOVERY_LIBRARY_SOURCE_FILES += $(TARGET_OUT_SHARED_LIBRARIES)/libexpat.so
TW_FORCE_KEYMASTER_VER := true
