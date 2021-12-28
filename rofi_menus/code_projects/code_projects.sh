#!/bin/sh

notification(){
	terminal-notifier -message 'Now Playing: Lofi Radio ☕️🎶'
}

menu(){
	printf "lofi-moods\n"
	printf "lofi-moods-admin\n"
	printf "boiling-waters\n"
}

choice=$(menu | rofi -dmenu -i -p "Select project") 
echo $choice;

notify-send "Launching: " $choice





