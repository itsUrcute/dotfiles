#!/bin/sh

# disable beep
xset -b

# Set keyboard (in x) to gb and switch capslock to ctrl
setxkbmap -option ctrl:nocaps

# Start compositor
picom -b

# hide cursor
unclutter --jitter 10 --ignore-scrolling --start-hidden --fork 

# Nitrogen
nitrogen --set-zoom-fill ~/Pictures/anime_room.png &

# Screenshot utility
flameshot &

# other apps
firefox &
code &
discord &
spotify &
alacritty &