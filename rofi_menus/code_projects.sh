#!/bin/sh
declare -A items

items["lofi-moods"]=/typescript/lofi-moods
items["lofi-moods-api"]=/typescript/lofi-moods-api
items["lofi-moods-admin"]=/typescript/lofi-moods-admin

getNames(){
  for key in ${!items[@]}; do echo ${key}; done
}

choice=$(getNames | rofi -dmenu -i -p "Select project") 

echo $choice
if [[ -n "$choice" ]] 
  then
    notify-send "Code:  $choice"
    code "/home/jerome/code${items[$choice]}"
fi
