#!/bin/zsh

if [ "$(uname)" != "Darwin" ] && [ -f "$HOME/.zshrc" ]; then
  . "$HOME/.zshrc";
fi
