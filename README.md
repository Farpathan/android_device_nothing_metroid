# Android Device Tree for Nothing Phone (3) - Metroid

PitchBlack Recovery Project (PBRP) device tree for Nothing Phone (3) (codename: Metroid, model: A024)

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

## Build Instructions

### Prerequisites

- Ubuntu 20.04 or later (or compatible Linux distribution)
- At least 100GB free disk space
- 16GB+ RAM recommended

### Setup Build Environment

```bash
# Install required packages
sudo apt update
sudo apt install git-core gnupg flex bison build-essential zip curl zlib1g-dev \
    libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev \
    libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig python3

# Install repo tool
mkdir -p ~/bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
export PATH=~/bin:$PATH
```

### Initialize and Sync PBRP Source

```bash
# Create working directory
mkdir pbrp && cd pbrp

# Initialize PBRP source (android-12.1 branch)
repo init -u https://github.com/PitchBlackRecoveryProject/manifest_pb -b android-12.1

# Sync source (this will take a while)
repo sync -j$(nproc --all)
```

### Clone Device Tree

```bash
git clone https://github.com/YourUsername/android_device_nothing_Metroid-pbrp.git device/nothing/Metroid
```

### Build PBRP

```bash
# Setup build environment
source build/envsetup.sh

# Select device
lunch pb_Metroid-eng

# Build recovery
mka pbrp
```

The recovery image will be located at `out/target/product/Metroid/recovery.img`

## Flashing Instructions

```bash
# Boot to bootloader
adb reboot bootloader

# Flash recovery (slot a)
fastboot flash recovery_a recovery.img

# Flash recovery (slot b)
fastboot flash recovery_b recovery.img

# Reboot to recovery
fastboot reboot recovery
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

## Credits

- [PitchBlack Recovery Project](https://pitchblackrecovery.com/)
- [Nothing Phone (2) PBRP Tree](https://github.com/PitchBlackRecoveryProject/android_device_nothing_Pong-pbrp)

## License

```
Copyright (C) 2025 The Android Open Source Project
Copyright (C) 2025 PitchBlack Recovery Project

SPDX-License-Identifier: Apache-2.0
```
