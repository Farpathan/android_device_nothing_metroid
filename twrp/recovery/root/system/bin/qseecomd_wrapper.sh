#!/system/bin/sh
# Wrapper script for qseecomd to ensure LD_PRELOAD is set
export LD_LIBRARY_PATH=/vendor/lib64:/vendor/lib:/system/lib64:/system/lib:/sbin
export LD_PRELOAD=/vendor/lib64/libc++_v36.so
exec /system/bin/qseecomd "$@"
