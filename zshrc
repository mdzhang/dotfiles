# Path to your oh-my-zsh installation.
export ZSH=$DOT_PATH/configs/zsh/oh-my-zsh

# Set default user to hide user@host in agnoster theme
DEFAULT_USER="mdzhang"
RPROMPT="%*"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$DOT_PATH/configs/zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  vi-mode
)

source $ZSH/oh-my-zsh.sh
