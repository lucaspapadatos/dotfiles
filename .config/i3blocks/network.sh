#!/bin/bash

ICON=" "
COLORON="#de0607"
COLOROFF="#FFFFFF"

iface=$(ip route | awk '/default/ {print $5}' | head -n 1)
state=$(cat /sys/class/net/$iface/operstate 2>/dev/null)

if [[ "$state" == "up" ]]; then
    echo "<span foreground=\"$COLORON\">$ICON</span>"
else
    echo "<span foreground=\"$COLOROFF\">$ICON</span>"
fi

