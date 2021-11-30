#!/bin/bash
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do
sleep 1
done
polybar topBar &
picom -f &
pcmanfm --desktop &
xsetroot -cursor_name left_ptr &
dunst &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
