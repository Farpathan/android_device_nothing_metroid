#!/system/bin/sh
# load_modules.sh - Load all kernel modules from vendor_dlkm

MODULE_DIR="/vendor_dlkm/lib/modules"

if [ ! -d "$MODULE_DIR" ]; then
    echo "Module directory $MODULE_DIR not found!" > /dev/kmsg
    exit 1
fi

echo "Loading modules from $MODULE_DIR" > /dev/kmsg

# Try loading all modules 3 times to resolve dependencies roughly
for i in 1 2 3; do
    for mod in $MODULE_DIR/*.ko; do
        insmod "$mod"
    done
done

echo "Module loading complete" > /dev/kmsg
setprop vendor.modules.ready 1
exit 0
