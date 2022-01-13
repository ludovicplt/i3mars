#!/bin/bash

killall -q polybar

~/.config/polybar/config
polybar example 2>&1 | tee -a /tmp/polybar.log &
~/.config/polybar/config
polybar second 2>&1 | tee -a /tmp/polybar.log &
disown

echo "polybar launched"
