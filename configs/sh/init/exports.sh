#!/bin/sh

export RCRC=$DOT_PATH/rcrc
export XDG_CONFIG_HOME=$HOME/.config

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

#
# tooling
#

export GOPATH=$HOME/opt/mdzhang/go
export PATH=$PATH:${GOPATH}/bin

#
# os
#

if [ "$(uname)" = "Darwin" ]; then
    if [ -f /usr/local/bin/brew ]; then
      _load_settings "$DOT_PATH/configs/sh/init/os/osx"
    fi
fi
