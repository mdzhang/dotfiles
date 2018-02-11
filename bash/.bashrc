#!/bin/bash -l

source "$HOME/.shrc"

#
# bash-it configs
#

export BASH_IT_CUSTOM="$XDG_CONFIG_HOME/bash/usr"

# Path to the bash it configuration
export BASH_IT="$XDG_CONFIG_HOME/bash/opt/bash-it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='brainy'

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Load Bash It
source "$BASH_IT/bash_it.sh"