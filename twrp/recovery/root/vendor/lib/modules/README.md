This directory is for the kernel modules (.ko files) required for the recovery to boot and function correctly (touch, haptics, display, etc.).

Please place the following files here:
- adsp_loader_dlkm.ko
- rproc_qcom_common.ko
- q6_dlkm.ko
- qcom_q6v5.ko
- qcom_q6v5_pas.ko
- qcom_sysmon.ko
- leds-qpnp-vibrator-ldo.ko
- haptic.ko
- qti_battery_charger.ko
- hwmon.ko

These files should be extracted from your device's stock firmware (vendor_boot, vendor_dlkm, or system_dlkm images).
