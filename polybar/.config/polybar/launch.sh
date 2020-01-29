#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar --reload bottom &
polybar --reload bottom2 &
polybar --reload top &
polybar --reload top2 &
