#!/bin/bash -l

source "$HOME/.shrc"

# Path to bash-it installation
export BASH_IT="$XDG_CONFIG_HOME/bash/opt/bash-it"

# Specify theme
export BASH_IT_THEME='sexy'

# Enable version control status checking
export SCM_CHECK=true

# Specify path to custom configurations
export BASH_IT_CUSTOM="$XDG_CONFIG_HOME/bash/usr"

# Load Bash It
source "$BASH_IT/bash_it.sh"
