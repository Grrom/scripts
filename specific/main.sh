#!/bin/bash

export PATH="$PATH:~/code/dart/channels/stable/bin"
export PATH="$PATH":"$HOME/code/dart/channels/stable/bin/cache/dart-sdk/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"

export EXTERNAL="/run/media/jerome/MANJARO"

export PATH="$MY_SCRIPTS""specific/bin:$PATH"

alias aniserve="mountexternal ; cd ${EXTERNAL}/anime/ ; node anime_server.js"

