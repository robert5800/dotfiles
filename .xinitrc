#!/bin/bash
#xrdb -merge ~/.Xresources
#dwmblocks &
unclutter &
xset r rate 300 50 &
exec i3
#while type dwm >/dev/null ; do dwm && continue || break ; done

