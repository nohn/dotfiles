#!/usr/bin/env bash
ID=$(xinput | grep Touchpad | awk '{ print $6 }' | cut -d "=" -f 2)
WHATEVER=$(xinput list-props $ID | grep "Tap Action" | cut -d "(" -f 2 | cut -d ")" -f 1)

xinput set-int-prop $ID $WHATEVER 8 2 3 0 0 1 2 3
xinput --set-prop $ID "Synaptics Finger" 10 20 30
