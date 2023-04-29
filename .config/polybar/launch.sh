#!/bin/sh
killall -q polybar
polybar -r bar 2>&1 | tee -a $HOME/.config/polybar/.polybar.log & disown


