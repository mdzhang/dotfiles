#!/bin/fish

# mdzhang: Can't do this b/c fish isn't posix-y :(
# source "$HOME/.shrc"

# Path to oh-my-fish install.
set -gx OMF_PATH "$XDG_DATA_HOME/omf"

# Load Oh My Fish
if test -s $OMF_PATH/init.fish
  source $OMF_PATH/init.fish
end

