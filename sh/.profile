#!/bin/sh

if [ -f "$HOME/.shrc" ]; then
  . "$HOME/.shrc";
fi

_load_settings "$XDG_CONFIG_HOME/profile/general"
