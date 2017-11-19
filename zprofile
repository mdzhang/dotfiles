#!/bin/zsh

set -o shwordsplit

if [ -f ~/.profile ]; then
  . ~/.profile;
fi

if [ -f ~/.zshrc ]; then
  . ~/.zshrc;
fi
