#!/bin/bash
xrandr -o right
xinput set-prop "GXTP7386:00 27C6:011A" --type=float "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1
xinput set-prop "GXTP7386:00 27C6:011A Stylus" --type=float "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1
