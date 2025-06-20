#!/bin/bash

ICON=""
COLORON="#B00000"
COLOROFF="#ffffff"

# List of connected devices
CONNECTED=$(bluetoothctl info | grep "Device" | wc -l)

if [ "$CONNECTED" -gt 0 ]; then
    DEVICES=$(bluetoothctl info | grep "Name" | cut -d ' ' -f2-)
    echo "<span foreground=\"$COLORON\">$ICON</span> $DEVICES"
else
    echo "<span foreground=\"$COLOROFF\">$ICON</span>"
fi
