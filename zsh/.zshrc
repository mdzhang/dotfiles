#!/bin/zsh -l

# zmodload zsh/zprof

set -o shwordsplit

source "$HOME/.shrc"

export ZSHDOT="$XDG_CONFIG_HOME/zsh"

# Custom history file location that respects XDG
export HISTFILE="$XDG_DATA_HOME/zsh/history"

# show timestamp in right side prompt
RPROMPT="%*"

# Load custom configurations
_load_settings "$XDG_CONFIG_HOME/zsh/usr"

# zprof
