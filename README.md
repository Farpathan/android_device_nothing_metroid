# OrangeFox Recovery for the Nothing Phone (3) (`Metroid`)

OrangeFox R12.0_1 device tree for the Nothing Phone (3), codename `Metroid`, model `A024`. Prebuilt images are on the [Releases](https://github.com/Farpathan/android_device_nothing_metroid/releases) page, tagged `ofox-v*`.

## Building

The tree builds on the TWRP 12.1 minimal manifest with OrangeFox's `fox_12.1` recovery sources in place of TWRP's.

```bash
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

rm -rf bootable/recovery
git clone https://gitlab.com/OrangeFox/bootable/Recovery.git -b fox_12.1 bootable/recovery
git clone https://gitlab.com/OrangeFox/vendor/recovery.git -b main vendor/recovery
git clone https://github.com/Farpathan/android_device_nothing_metroid.git -b fox_12.1 device/nothing/Metroid

. build/envsetup.sh
lunch twrp_Metroid-eng
mka recoveryimage -j$(nproc --all)
```

`vendorsetup.sh` sets the OrangeFox build variables and applies the patches in `patches/`. The image and flashable zip end up in `out/target/product/Metroid/`.

## Flashing

```bash
adb reboot bootloader
fastboot flash recovery_a OrangeFox-R12.0_1-Unofficial-Metroid.img
fastboot flash recovery_b OrangeFox-R12.0_1-Unofficial-Metroid.img
fastboot reboot recovery
```

Flash both slots. The bootloader boots the recovery of the active slot, and the active slot changes after an OTA or a ROM flash. From a custom recovery you can also install `OrangeFox-R12.0_1-Unofficial-Metroid.zip`.

## Credits

- [OrangeFox Recovery Project](https://gitlab.com/OrangeFox)
- [TeamWin Recovery Project](https://github.com/TeamWin)
