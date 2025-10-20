#!/usr/bin/env bash

for dir in hypr waybar kitty wofi btop cava yazi zathura spicetify vesktop swappy wlogout; do
    rm -rf ~/.config/$dir
    ln -sfn "$(pwd)/$dir" ~/.config/$dir
done