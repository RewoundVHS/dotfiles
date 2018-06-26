#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bottom bar
polybar -r -c ~/.config/polybar/vhs bottom &

echo "Bars launched..."
