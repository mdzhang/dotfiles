#!/bin/bash

if [ "$(uname)" != "Darwin" ] && [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc";
fi
