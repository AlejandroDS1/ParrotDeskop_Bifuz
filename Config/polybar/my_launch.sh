#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch

## Left bar
polybar log -c ~/.config/polybar/my_current.ini &
polybar secondary -c ~/.config/polybar/my_current.ini &
polybar terciary -c ~/.config/polybar/my_current.ini &
polybar quaternary -c ~/.config/polybar/my_current.ini &
polybar quinary -c ~/.config/polybar/my_current.ini &
polybar memoria -c ~/.config/polybar/my_current.ini &
polybar cpu -c ~/.config/polybar/my_current.ini &
## Right bar
#polybar top -c ~/.config/polybar/my_current.ini &
polybar primary -c ~/.config/polybar/my_current.ini &

## Center bar
polybar primary -c ~/.config/polybar/my_workspace.ini &

