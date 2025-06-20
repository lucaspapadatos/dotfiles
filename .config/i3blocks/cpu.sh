#!/bin/bash
ICON=""
COLOR="#B00000"
USAGE=$(mpstat 1 1 | awk '/^Average:/ { printf "%2d", 100 - $NF }')
echo "<span foreground=\"$COLOR\">$ICON</span> $USAGE%"
