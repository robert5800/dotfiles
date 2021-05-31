#!/bin/bash
#xrdb -merge ~/.Xresources
dwmblocks &
exec dwm
while type dwm >/dev/null ; do dwm && continue || break ; done

