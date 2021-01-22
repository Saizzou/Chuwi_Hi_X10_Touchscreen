#!/bin/bash

# Horizontal Position
fhorizontal () {
	xrandr -o normal
	xinput set-prop "GXTP7386:00 27C6:011A" --type=float "Coordinate Transformation Matrix" 0 0 0 0 0 0 0 0 0
	xinput set-prop "GXTP7386:00 27C6:011A Stylus" --type=float "Coordinate Transformation Matrix" 0 0 0 0 0 0 0 0 0
}

# Vertical Position
fvertical () {
	xrandr -o right
	xinput set-prop "GXTP7386:00 27C6:011A" --type=float "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1
	xinput set-prop "GXTP7386:00 27C6:011A Stylus" --type=float "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1
}

#Check if keyboard is used. When not used change to Horizontal Position.
fcheck () {
	if lsusb | grep keyboard -q; then
		fvertical
	else
		fhorizontal
	fi
}

#Loop the Script forever.
i=1
while ( i -eq 0 ); do
	fcheck
	sleep 1
done
