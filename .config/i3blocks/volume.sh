#!/bin/bash

ICONON=""
ICONOFF=" "
COLORON="#B00000"
COLOROFF="#FFFFFF"

if [[ "$BLOCK_BUTTON" == "1" ]]; then
    pavucontrol &
    exit
fi

sink=$(pactl get-default-sink)
volume=$(pactl get-sink-volume "$sink" | awk '{print $5}' | head -n 1)
mute=$(pactl get-sink-mute "$sink" | awk '{print $2}')

if [[ "$mute" == "yes" ]]; then
    echo "<span foreground=\"$COLOROFF\">$ICONOFF</span>"
else
    echo "<span foreground=\"$COLORON\">$ICONON</span> $volume"
fi

