#!/bin/fish

########################################
# TODO: Can't do `source "$HOME/.shrc`
#       b/c Fish isn't bash-wards compat
#       instead port .shrc to fish here
########################################

export DOT_PATH=$HOME/.dotfiles
export SHELL_NAME=(basename $SHELL)

# for user-specific configs
export XDG_CONFIG_HOME="$HOME/.config"
# for user-specific data
export XDG_DATA_HOME="$HOME/.local/share"
# for user-specific, non-essential data
export XDG_CACHE_HOME="$HOME/.cache"

function _load_settings
  set _dir $argv[1]

  if test -d $_dir
    for config in $_dir/*
      # TODO: compensate for bash init logic
      if test -f $config; and not echo $config | grep "init.sh" > /dev/null
        . "$config"
      end
    end
  else if test -f $_dir
    . $_dir
  else
    echo Could not load setting $_dir
  end
end

# TODO: compensate for bash 'scripts' module not loaded here
set local_modules xdg general docker gcloud git golang lynx newsboat node pg python readline ruby rust vim

if test (uname) = "Darwin"
  set local_modules $local_modules macos
else
  set local_modules $local_modules nix
end

for local_module in $local_modules
  _load_settings "$XDG_CONFIG_HOME/sh/$local_module"
end

########################################
# oh-my-fish
#########################################

# Path to oh-my-fish install.
set -gx OMF_PATH "$XDG_DATA_HOME/omf"

# Load Oh My Fish
if test -s $OMF_PATH/init.fish
  source $OMF_PATH/init.fish
end
