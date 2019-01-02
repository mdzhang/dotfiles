#!/bin/zsh -l
# zmodload zsh/zprof

set -o shwordsplit

export SHELL=$(which zsh)

source "$HOME/.shrc"

# custom history file location that respects XDG
export HISTFILE="$XDG_DATA_HOME/zsh/history"

# show timestamp in right side prompt
RPROMPT="%*"

# Load custom configurations
_load_settings "$XDG_CONFIG_HOME/zsh/usr"

if which vocab > /dev/null; then
  vocab
fi

# zprof
