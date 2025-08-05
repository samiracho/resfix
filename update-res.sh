#!/usr/bin/env bash
set -e

RES="$(xrandr | grep '60.00 +' | awk '{print $1;}')"

if [ "$RES" != '' ]; then
  xrandr -s "$RES"
fi

xmodmap /home/sam/.xmodmap-debian
