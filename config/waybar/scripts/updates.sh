#!/bin/sh
upcount=$(checkupdates | wc -l)
while :
do 
	echo   "$upcount"
	sleep 100
done



