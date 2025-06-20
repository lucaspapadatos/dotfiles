#!/bin/bash

echo -e "⏻ Power Off\n Reboot\n Lock\n Suspend" | \
rofi -dmenu -i -p "Power Menu" | \
while read -r option; do
    case "$option" in
        *Power*) systemctl poweroff ;;
        *Reboot*) systemctl reboot ;;
        *Lock*) i3lock ;;
        *Suspend*) systemctl suspend ;;
    esac
done

