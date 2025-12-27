#!/system/bin/sh
# Wrapper script for keymint-service-qti to ensure LD_PRELOAD is set
# Using OnePlus 15's libc++_v36.so for compatibility
export LD_LIBRARY_PATH=/vendor/lib64:/system/lib64:/sbin
export LD_PRELOAD=/vendor/lib64/libc++_v36.so
exec /system/bin/android.hardware.security.keymint-service-qti "$@"
