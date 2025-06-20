#!/bin/bash

ICON=""
COLORON="#B00000"
COLOROFF="#ffffff"

status=$(nordvpn status 2>/dev/null | grep "Status" | awk '{print $2}')

if [[ "$status" == "Connected" ]]; then
    echo "<span foreground=\"$COLORON\">$ICON</span> VPN"
else
    echo "<span foreground=\"$COLOROFF\">$ICON</span> VPN"
fi

