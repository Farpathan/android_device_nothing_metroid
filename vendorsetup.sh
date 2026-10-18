#
# Copyright (C) 2024-2026 PitchBlack Recovery Project
#
# Target Architecture & General Build Flags
export TARGET_ARCH="arm64"
export ALLOW_MISSING_DEPENDENCIES=true
export TARGET_DEVICE_ALT="Metroid,metroid,A024,MetroidIND"
export TW_DEFAULT_LANGUAGE="en"
export LC_ALL="C"

# Auto-apply essential decryption and haptic patches if needed
if [ -d "device/nothing/Metroid/patches" ]; then
    patch -d system/vold -p1 -N -r - --dry-run < device/nothing/Metroid/patches/system_vold.patch >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "-- Applying system/vold patches for Nothing Phone 3 decryption..."
        patch -d system/vold -p1 -N -r - < device/nothing/Metroid/patches/system_vold.patch >/dev/null 2>&1
    fi
    patch -d bootable/recovery -p1 -N -r - --dry-run < device/nothing/Metroid/patches/bootable_recovery.patch >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "-- Applying bootable/recovery patches for Nothing Phone 3 crypto & haptics..."
        patch -d bootable/recovery -p1 -N -r - < device/nothing/Metroid/patches/bootable_recovery.patch >/dev/null 2>&1
    fi
    patch -d system/libvintf -p1 -N -r - --dry-run < device/nothing/Metroid/patches/system_libvintf.patch >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "-- Applying system/libvintf patches for Nothing OS 5.0 VINTF parsing..."
        patch -d system/libvintf -p1 -N -r - < device/nothing/Metroid/patches/system_libvintf.patch >/dev/null 2>&1
    fi
    patch -d system/security -p1 -N -r - --dry-run < device/nothing/Metroid/patches/system_security.patch >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "-- Applying system/security patches for Keystore2 stability..."
        patch -d system/security -p1 -N -r - < device/nothing/Metroid/patches/system_security.patch >/dev/null 2>&1
    fi
fi
