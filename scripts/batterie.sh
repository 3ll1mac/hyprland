#!/bin/sh

quinze=0
dix=0
cinq=0

status=`cat /sys/class/power_supply/BAT0/status`
current_charge=`cat /sys/class/power_supply/BAT0/charge_now`
threshold_charge=`cat /sys/class/power_supply/BAT0/alarm`

echo $status $current_charge $threshold_charge

if [ $status = "Discharging" -a $current_charge -le $threshold_charge ]
then
	notify-send -u critical  "Batterie low"
fi

