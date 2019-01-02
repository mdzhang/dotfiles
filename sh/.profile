#!/bin/sh

if [ "$(uname)" != "Darwin" ] && [ -f "$HOME/.shrc" ]; then
  . "$HOME/.shrc";
fi
