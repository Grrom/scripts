#!/bin/bash
echo "sourced" >> ~/log.txt

# ALIASES
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias lvim="/home/jerome/.local/bin/lvim"
alias x="exit"
alias xbind="killall xbindkeys; xbindkeys"


# SOURCING STUFF
source $MY_SCRIPTS/utils/quick_edits.sh

source $MY_SCRIPTS/specific/main.sh

