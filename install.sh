#!/bin/bash
# Installation of ScreenTurner for Chuwi X 10 Hi.
# This will work on other Tablets which uses a Bluetooth or detachable keyboard too!


fcheck () {
	if test ! -f ./ScreenTurner; then
		wget --no-check-certificate --content-disposition "https://github.com/Saizzou/Chuwi_Hi_X10_Touchscreen/blob/main/ScreenTurner.sh"
	fi
}

#Check if Sudo is used!

if [[ $EUID != 0 ]]; then
	echo "You have to use sudo for the instalationofl ScreenTurner!"
	sleep 3
	exit 1
fi

cp ./ScreenTurner.sh /etc/

echo "[Unit]
Description=Screen Turning Event
PartOf=graphical-session-target

[Service]
ExecStart=/etc/ScreenTurner.sh

[Install]
WantedBy=default.target" >> /usr/lib/systemd/screenturner.service

start = /etc/ScreenTurner.sh
$start
