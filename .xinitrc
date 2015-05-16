#!/bin/sh
#
# ~/.xinitrc
# Executed by startx (run your window manager from here)

# Verify another monitor is connected
# dont forget to type 'xrandr' before to see what is the name
# Eg.: VGA1, VGA-1, DVI1, DVI-1, eDP1, eDP-1, LVDS1, LVDS-1
display_primary="eDP1"
display_secundary="VGA1"
if [ `xrandr | grep -c ' connected '` -eq 2 ]; then
    if [ `xrandr | grep $display_secundary | grep -c ' connected '` -eq 1 ]; then
        xrandr --output $display_secundary --auto --left-of $display_primary
    fi
else
    xrandr --output $display_primary --auto --primary --output $display_secundary --off
fi

exec i3
