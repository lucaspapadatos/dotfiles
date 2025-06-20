#!/bin/bash

echo "<span foreground=\"#de0607\"> </span>"

if [[ "$BLOCK_BUTTON" == "1" ]]; then
    ~/.config/rofi/power-menu.sh &
    exit
fi
