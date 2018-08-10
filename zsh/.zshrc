#!/bin/zsh -l

# zmodload zsh/zprof

set -o shwordsplit

source "$HOME/.shrc"

# Path to prezto installation
export ZPREZTODIR="$XDG_CONFIG_HOME/zsh/opt/prezto"

# Custom history file location that respects XDG
export HISTFILE="$XDG_DATA_HOME/zsh/history"

# show timestamp in right side prompt
RPROMPT="%*"

# Load Prezto
if [[ -s "$ZPREZTODIR/init.zsh" ]]; then
  source "$ZPREZTODIR/init.zsh"
fi

# zprof
