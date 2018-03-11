#!/bin/sh

#
# language
#

# Prefer US English and use UTF-8.
export LANG="en_US.UTF-8"
export LANGUAGE="en.UTF-8"
export LC_ALL="en_US.UTF-8"

#
# history
#

# for setting history length
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILESIZE=20000
# don"t put duplicate lines or lines starting with space in the history
export HISTCONTROL=ignoreboth

#
# prompt
#

export TERM="xterm-256color"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#
# convenience
#

export EMAIL=zhang.michelle.d@gmail.com
export FULL_NAME="Michelle D Zhang"

export GPG_TTY=$(tty)

export GHQ_ROOT="$HOME/src"
export ANYENV_ROOT="$XDG_DATA_HOME/anyenv"
export PATH="$ANYENV_ROOT/bin:$PATH"
export PATH="$HOME/.basher/bin:$PATH"
