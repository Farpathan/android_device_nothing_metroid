#!/system/bin/sh
# Thermal zone numbers change between boots, so find the CPU sensor by type.

link=/tmp/cpu_temp
fallback=

for zone in /sys/class/thermal/thermal_zone*; do
    type=$(cat "$zone/type" 2>/dev/null)
    case "$type" in
        cpu-2-0-2)
            ln -sf "$zone/temp" "$link"
            exit 0
            ;;
        cpu-*)
            [ -z "$fallback" ] && fallback="$zone"
            ;;
    esac
done

[ -n "$fallback" ] && ln -sf "$fallback/temp" "$link"
