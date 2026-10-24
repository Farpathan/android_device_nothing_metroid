# PitchBlack Recovery for the Nothing Phone (3) (`Metroid`)

PitchBlack Recovery Project 4.0 device tree for the Nothing Phone (3), codename `Metroid`, model `A024`. Prebuilt images are on the [Releases](https://github.com/Farpathan/android_device_nothing_metroid/releases) page, tagged `pbrp-v*`.

## Building

```bash
repo init --depth=1 -u https://github.com/PitchBlackRecoveryProject/manifest_pb -b android-12.1
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
git clone https://github.com/Farpathan/android_device_nothing_metroid.git -b pbrp device/nothing/Metroid

. build/envsetup.sh
lunch pb_Metroid-eng
mka pbrp -j$(nproc --all)
```

`vendorsetup.sh` applies the patches in `patches/`. The image (`recovery.img`) and flashable zip end up in `out/target/product/Metroid/`.

## Flashing

```bash
adb reboot bootloader
fastboot flash recovery_a PBRP-v4.0-Unofficial-Metroid.img
fastboot flash recovery_b PBRP-v4.0-Unofficial-Metroid.img
fastboot reboot recovery
```

Flash both slots. The bootloader boots the recovery of the active slot, and the active slot changes after an OTA or a ROM flash. From a custom recovery you can also install the `PBRP-Metroid-*.zip` from the release.

## Credits

- [PitchBlack Recovery Project](https://github.com/PitchBlackRecoveryProject)
- [TeamWin Recovery Project](https://github.com/TeamWin)
