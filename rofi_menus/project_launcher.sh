#!/bin/bash

choice=$(
  for dir in $(ls $MY_CODE); do
    for proj in $(ls $MY_CODE/$dir/); do 
      echo $dir/$proj;
    done;
  done | rofi -dmenu -i -p "Select Project:"
)

if [[ -n "$choice" ]] 
  then
    notify-send "Code: "$choice
    code $MY_CODE$choice
  else
    notify-send "project launcher cancelled"
fi
