#!/bin/bash
export EXTERNAL="/run/media/jerome/MANJARO"
export MY_SCRIPTS=/home/jerome/scripts/
export MY_CODE=/home/jerome/code/

export PATH="$PATH:~/code/dart/channels/stable/bin"
export PATH="$PATH":"$HOME/code/dart/channels/stable/bin/cache/dart-sdk/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"

# ALIASES
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias aniserve="mountExternal ; cd ${EXTERNAL}/anime/ ; node anime_server.js"
alias lvim="/home/jerome/.local/bin/lvim" #use lunarvim

# SOURCING STUFF


# quick edits
source $MY_SCRIPTS/quick_edits.sh
source $MY_SCRIPTS/project_shortcuts.sh

# commands
source $MY_SCRIPTS/commands.sh

