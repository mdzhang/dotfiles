#!/bin/bash

ulimit -u 512

# case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# append to the history file, don't overwrite it
shopt -s histappend

export HISTFILE="$XDG_DATA_HOME"/bash/history
