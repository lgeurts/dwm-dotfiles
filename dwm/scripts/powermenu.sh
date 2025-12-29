#!/bin/bash

function powermenu {
	options="Shutdown\nReboot\nLog out\nSuspend\nCancel"
	selected=$(echo -e $options | dmenu -c -g 1 -fn "JetBrainsMono Nerd Font:weight=bold:size=10:antialias=true:hinting=true" -nb "#1e1d2d" -nf "#abe9b3" -sb "#d5aeea" -sf "#1e1d2d" -shb "#cba6f7" -shf "#585b70" -nhb "#1e1e2e" -nfh "#585b70" -l 5 -h 40 -p 'Powermenu: ') 
	if [[ $selected = "Shutdown" ]]; then
		systemctl poweroff
	elif [[ $selected = "Reboot" ]]; then
		systemctl reboot
	elif [[ $selected = "Suspend" ]]; then
		systemctl suspend	
	elif [[ $selected = "Log out" ]]; then
		loginctl terminate-session $(loginctl session-status | head -n 1 | awk '{print $1}')
	elif [[ $selected = "Cancel" ]]; then
		return
	fi
}

powermenu
