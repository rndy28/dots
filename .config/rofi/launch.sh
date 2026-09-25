#!/usr/bin/env bash
XDG_DATA_HOME=/nonexistent \
XDG_DATA_DIRS="$HOME/.config/rofi" \
exec rofi -show drun -show-icons