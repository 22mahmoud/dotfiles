#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch top and bottom
polybar top -c ~/.config/polybar/config-top.ini &
polybar bottom -c ~/.config/polybar/config-bottom.ini &

