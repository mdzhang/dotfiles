#!/bin/sh

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
# for setting history length
export HISTSIZE=10000
export HISTFILESIZE=20000

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
# browsers
#
export WWW_HOME=http://google.com

#
# convenience
#
export EMAIL=zhang.michelle.d@gmail.com
export FULL_NAME='Michelle D Zhang'
