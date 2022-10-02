#!/bin/sh
while true
do
batlvl=$(acpi -b | grep -P -o '[0-9]+(?=%)')

if on_ac_power; then

	if  [  "$batlvl" -gt 85 ]; then
			notify-send " Battery Full "
			paplay /usr/share/sounds/freedesktop/stereo/service-login.oga
	fi
else 
	if  [  "$batlvl" -lt 25 ]; then
			notify-send " Battery low "
			paplay /usr/share/sounds/freedesktop/stereo/service-logout.oga
	fi
fi
done
