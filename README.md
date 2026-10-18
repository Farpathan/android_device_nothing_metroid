# PitchBlack Recovery Project (PBRP) for Nothing Phone (3) - Metroid

PitchBlack Recovery Project device tree for Nothing Phone (3) (codename: `Metroid`, model: `A024`).

## Device Specifications

| Feature  | Specification                  |
| -------- | ------------------------------ |
| Chipset  | Qualcomm Snapdragon SM8735 (8s Gen 4 / tuna) |
| Platform | sun                            |
| CPU      | Octa-core                      |
| GPU      | Adreno                         |
| Memory   | 8/12/16 GB                     |
| Storage  | 256/512 GB                     |
| Display  | 6.7" 1260 x 2800 pixels, 120Hz (1.5K AMOLED) |

## Current Status

| Feature        | Status               |
| -------------- | -------------------- |
| Boot           | ✅ Working           |
| Touch          | ✅ Working (fts_ts)  |
| Decryption     | ✅ Working (FBE v2)  |
| Haptics        | ✅ Working (sysfs)   |
| ADB            | ✅ Working           |         
| MTP            | ✅ Working           |
| Backup/Restore | ✅ Working           |
| Flash Zips     | ✅ Working           |

## Building PBRP

```bash
# Initialize PBRP 12.1 minimal manifest
repo init --depth=1 -u https://github.com/PitchBlackRecoveryProject/manifest_pb -b android-12.1
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

# Clone device tree into device/nothing/Metroid
git clone https://github.com/Farpathan/android_device_nothing_metroid.git -b pbrp device/nothing/Metroid

# Setup build environment and lunch
. build/envsetup.sh
lunch pb_Metroid-eng

# Build recovery image
mka recoveryimage -j$(nproc --all)
```

## Credits
* **PitchBlack Recovery Project (PBRP)**
* **TeamWin Recovery Project (TWRP)**
* **Nothing OS & Qualcomm SM8735 Community**
