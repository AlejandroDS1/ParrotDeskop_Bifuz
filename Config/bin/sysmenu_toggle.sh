#!/bin/bash

PID_rofi=$(top -b -n 1 | grep "rofi" | awk '{print $1}')

if [ ${#PID_rofi} -eq 0 ]; then 

	# Abre el menu rofi
	/home/bifuz/.config/polybar/scripts/powermenu_alt
	exit 0
fi

# Si hay proceso rofi, matamos el proceso
kill -9 $PID_rofi
