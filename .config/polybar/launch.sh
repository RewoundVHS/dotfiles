#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Multi monitor support
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
	  MONITOR=$m polybar --reload bottom &
	  #MONITOR=$m polybar --reload main &
  done
else
	polybar --reload bottom &
	#polybar --reload main &
fi

# Launch bottom bar
#polybar -vvv -r --config=~/.config/polybar/config main &
polybar -vvv -r --config=~/.config/polybar/config bottom &

echo "Bars launched..."
