#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 PitchBlack Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Identifier for common folder
COMMON_SOC := sm84xx

# Define hardware platform
PRODUCT_PLATFORM := sun

# Release name (automatically taken from this file's suffix)
PRODUCT_RELEASE_NAME := $(lastword $(subst /, ,$(lastword $(subst _, ,$(firstword $(subst ., ,$(MAKEFILE_LIST)))))))

# Custom vendor used in build tree
CUSTOM_VENDOR := pb

# Inherit from our custom product configuration
$(call inherit-product, vendor/$(CUSTOM_VENDOR)/config/common.mk)

# OEM Info
BOARD_VENDOR := nothing

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := $(CUSTOM_VENDOR)_$(PRODUCT_DEVICE)
PRODUCT_BRAND := $(BOARD_VENDOR)
PRODUCT_MODEL := Nothing Phone (3)
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)

# Common path for device trees
COMMON_PATH := device/$(PRODUCT_BRAND)/$(PRODUCT_DEVICE)
DEVICE_PATH := device/$(PRODUCT_BRAND)/$(PRODUCT_DEVICE)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(DEVICE_PATH)/device-$(PRODUCT_DEVICE).mk)
