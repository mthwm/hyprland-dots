#!/bin/bash

DEVICE="intel_backlight"

value=$(brightnessctl -d "$DEVICE" get)
max=$(brightnessctl -d "$DEVICE" max)

if [ "$max" -eq 0 ]; then
    echo "Error: max brightness is 0"
    exit 1
fi

percent=$((value * 100 / max))

new=$(zenity --scale \
    --title="Brightness Control" \
    --text="Adjust screen brightness" \
    --min-value=1 \
    --max-value=100 \
    --value="$percent" \
    --step=1)

if [ $? -eq 0 ]; then
    brightnessctl -d "$DEVICE" set "${new}%"
fi
