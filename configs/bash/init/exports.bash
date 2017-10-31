export RCRC=$DOT_PATH/rcrc

#
# language
#

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8'
export LANGUAGE='en.UTF-8'
export LC_ALL='en_US.UTF-8'

#
# editor
#

export EDITOR='vim'
export VISUAL='vim'

#
# history
#

# don't put duplicate lines or lines starting with space in the history
export HISTCONTROL=ignoreboth
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTSIZE=1000
export HISTFILESIZE=20000
# Omit duplicates and commands that begin with a space from history.
export HISTCONTROL=ignoreboth

#
# prompt
#

export TERM='xterm-256color'
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# http://misc.flogisoft.com/bash/tip_colors_and_formatting
# https://en.wikipedia.org/wiki/ANSI_escape_code#Sequence_elements

export PROMPT_DIRTRIM=2
export PROMPT_COMMAND="find_git_branch; find_git_dirty; $PROMPT_COMMAND"
export PS1=$(get_prompt)

#
# OS X
#

if [ "$(uname)" == "Darwin" ]; then
    if [ -f /usr/local/bin/brew ]; then
      export HOMEBREW_CASK_OPTS="--appdir=/Applications"
    fi
fi
