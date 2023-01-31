#!/bin/bash

# ALIASES
#alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME" #I'm no longer maintaining my dotfiles
alias x="exit"
alias xbind="killall xbindkeys; xbindkeys"


# SOURCING STUFF
source $MY_SCRIPTS/quick_edits.sh
source $MY_SCRIPTS/aliases.sh

source $MY_SCRIPTS/specific/main.sh

