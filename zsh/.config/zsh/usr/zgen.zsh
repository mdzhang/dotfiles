#!/bin/zsh -l

# Path to prezto installation
export ZPREZTODIR="$XDG_CONFIG_HOME/zsh/opt/prezto"

export ZGEN_DIR="$XDG_DATA_HOME/zgen"

# set default user to hide user@host in agnoster theme prompt
export DEFAULT_USER="mdzhang"

if [[ -d "$XDG_CONFIG_HOME/zsh/opt/zgen" ]]; then
  source "$XDG_CONFIG_HOME/zsh/opt/zgen/zgen.zsh"

  # if the init scipt doesn't exist
  if ! zgen saved; then
    #
    # General
    #

    # Color output (auto set to 'no' on dumb terminals).
    zgen prezto '*:*' color 'yes'

    # prezto modules to load, order matters
    zgen prezto autosuggestions
    zgen prezto environment
    zgen prezto terminal
    zgen prezto editor
    zgen prezto directory
    zgen prezto spectrum
    zgen prezto utility
    zgen prezto ssh
    zgen prezto completion
    zgen prezto docker
    zgen prezto homebrew
    zgen prezto git
    zgen prezto syntax-highlighting
    zgen prezto history-substring-search
    zgen prezto prompt

    #
    # Editor
    #

    # use vi key mappings
    zgen prezto editor key-bindings 'vi'
    # show >>> depending on vi mode
    zgen prezto editor ps-context 'yes'

    #
    # Prompt
    #

    # set theme
    zgen prezto prompt theme 'agnoster'

    # prompt shows indicator for non-zero return codes for previous command
    zgen prezto prompt show-return-val 'yes'

    #
    # Terminal
    #

    # Auto set the tab and window titles.
    zgen prezto terminal auto-title 'yes'

    # Set the window title format.
    zgen prezto terminal:window-title format '%n@%m: %s'

    # Set the tab title format.
    zgen prezto terminal:tab-title format '%m: %s'

    # Set the terminal multiplexer title format.
    zgen prezto terminal:multiplexer-title format '%s'

    # load prezto
    zgen prezto

    # highlight command line text
    zgen load zsh-users/zsh-syntax-highlighting
    # quickly move to higher level directories
    zgen load Tarrasch/zsh-bd
    # print directories w/ git status info
    zgen load supercrabtree/k
    # fzf/z integration
    zgen load andrewferrier/fzf-z

    # generate the init script from plugins above
    zgen save
  fi
fi

