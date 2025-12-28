# Android Device Tree for Nothing Phone (3) - Metroid

Recovery device tree for Nothing Phone (3) (codename: Metroid, model: A024)

## Device Specifications

| Feature  | Specification                  |
| -------- | ------------------------------ |
| Chipset  | Qualcomm Snapdragon 8s Gen 4   |
| Platform | sun                            |
| CPU      | Octa-core                      |
| GPU      | Adreno                         |
| Memory   | 8/12 GB                        |
| Storage  | 256/512 GB                     |
| Display  | 6.7" 1080 x 2400 pixels, 120Hz |

## Supported Recoveries

This device tree supports building:

- **OrangeFox Recovery** - use `twrp_Metroid` target
- **PitchBlack Recovery (PBRP)** - use `pb_Metroid` target

## Build Instructions

### OrangeFox Recovery

```bash
# Initialize OrangeFox source
repo init -u https://gitlab.com/OrangeFox/sync.git -b fox_12.1

# Sync source
repo sync

# Clone device tree
git clone https://github.com/YourUsername/android_device_nothing_metroid.git device/nothing/Metroid

# Build
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_BUILD_DEVICE=Metroid
lunch twrp_Metroid-eng
mka recoveryimage
```

### PitchBlack Recovery (PBRP)

```bash
# Initialize PBRP source
repo init -u https://github.com/PitchBlackRecoveryProject/manifest_pb -b android-12.1

# Sync source
repo sync

# Clone device tree
git clone https://github.com/YourUsername/android_device_nothing_metroid.git device/nothing/Metroid

# Build
source build/envsetup.sh
lunch pb_Metroid-eng
mka pbrp
```

## Current Status

| Feature        | Status               |
| -------------- | -------------------- |
| Boot           | ✅ Working           |
| Touch          | ✅ Working           |
| ADB            | ✅ Working           |
| USB-OTG        | ✅ Working           |
| Sideload       | ✅ Working           |
| Backup/Restore | ✅ Working           |
| Encryption     | ❌ Not Working (WIP) |

## License

```
Copyright (C) 2025 The Android Open Source Project
Copyright (C) 2025 OrangeFox Recovery Project
Copyright (C) 2025 PitchBlack Recovery Project

SPDX-License-Identifier: Apache-2.0
```
