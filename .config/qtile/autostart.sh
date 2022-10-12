#!/usr/bin/bash

# disable beep
xset -b

# Set keyboard (in x) to gb and switch capslock to ctrl
setxkbmap -option ctrl:nocaps

# Start compositor
picom -b

# hide cursor
unclutter --jitter 10 --ignore-scrolling --start-hidden --fork

# Screenshot utility
flameshot &

# other apps
discord &
firefox &
alacritty &

# Wallpaper
wal -i ~/.config/qtile/Assets/Aesthetic2.png &
