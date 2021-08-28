#!/bin/bash
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do
sleep 1
done
polybar topBar &
picom -f &
feh --bg-scale ~/Pictures/Wallpapers/default_wallpaper &
xsetroot -cursor_name left_ptr &
xrdb ~/.Xresources &
dunst &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
