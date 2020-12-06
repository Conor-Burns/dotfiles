#!/usr/bin/bash

# Terminate already running bar instances
killall -q polybar
sleep 1
killall -q polybar
killall -q spotpris2

# Wait...
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar --reload top &
polybar --reload bottom &
polybar --reload top2 &
polybar --reload bottom2 &
polybar --reload top3 &
polybar --reload bottom3 &
spotpris2 &
