#!/bin/sh
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

sxhkd & 
exec bspwm
