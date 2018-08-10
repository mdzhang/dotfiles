#!/bin/zsh

if [ -f "$HOME/.zshrc" ]; then
  . "$HOME/.zshrc";
fi

# Load custom configurations
_load_settings "$XDG_CONFIG_HOME/zsh/usr"
