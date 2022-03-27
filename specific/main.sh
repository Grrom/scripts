#!/bin/bash

#launch my anime server
alias jjaniserve="jjmountexternal && cd ${EXTERNAL}/anime/ && node anime_server.js"

#dual monitor
alias dual="xrandr --output DP-1 --mode 1600x900 --rate 60 --left-of HDMI-1 --output HDMI-1 --mode 1920x1080 --rate 60 --primary && xrandr --output DP-1 --pos 0x180"

#activate python environment for annie_discord
alias anniepy="source $HOME/code/python/environments/annie_discord/bin/activate"

alias pip="python3 -m pip"
