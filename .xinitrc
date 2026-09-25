#!/bin/sh
xrandr --auto

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
fcitx5 &


eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

sxhkd & 
exec bspwm
