#!/bin/bash
makoctl list | jq -r '.[].summary' | rofi -dmenu
