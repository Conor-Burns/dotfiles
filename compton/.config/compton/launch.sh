#!/bin/bash

killall -q compton

while pgrep -x compton >/dev/null; do sleep 1; done

compton --blur-method kawase --blur-strength 5 --backend glx -iem --config ~/.config/compton/config
