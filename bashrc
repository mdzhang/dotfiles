#!/bin/bash

#
# bash-it configs
#

export BASH_IT_CUSTOM="$DOT_PATH/configs/bash/init"

# Path to the bash it configuration
export BASH_IT="$DOT_PATH/configs/bash/bash-it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='brainy'

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Load Bash It
source "$BASH_IT/bash_it.sh"

#
# local overrides
#

if [ -f ~/.bashrc.local ]; then
  . ~/.bashrc.local
fi

