#!/bin/zsh

if [ -f "$HOME/.zshrc" ]; then
  . "$HOME/.zshrc";
fi

if which vocab > /dev/null; then
  vocab
fi
