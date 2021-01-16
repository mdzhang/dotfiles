#!/bin/zsh -l

export ZGEN_DIR="$XDG_DATA_HOME/zgen"

# set default user to hide user@host in agnoster theme prompt
export DEFAULT_USER="mdzhang"

if [[ -d "$XDG_CONFIG_HOME/zsh/opt/zgen" ]]; then
  source "$XDG_CONFIG_HOME/zsh/opt/zgen/zgen.zsh"

  # if the init scipt doesn't exist
  if ! zgen saved; then
    ###################
    # Prezto
    ###################

    # load prezto
    zgen prezto

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
    zgen prezto prompt theme 'pure'

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

    # conflicts w/ grc coloring
    zgen prezto utility:ls dirs-first 'no'
    zgen prezto utility:ls color 'no'

    ###################
    # Other Third Party
    ###################

    # highlight command line text
    zgen load zsh-users/zsh-syntax-highlighting
    # fzf/z integration
    zgen load andrewferrier/fzf-z
    # autocompletions
    zgen load littleq0903/gcloud-zsh-completion src

    zgen load zsh-users/zsh-history-substring-search

    bindkey -M vicmd 'k' history-substring-search-up
    bindkey -M vicmd 'j' history-substring-search-down
    bindkey '^[[A' history-substring-search-up
    bindkey '^[[B' history-substring-search-down

    ###################
    # Custom
    ###################

    zgen load $XDG_CONFIG_HOME/zsh/usr/plugins/completions.zsh

    # mdzhang: this only takes effect if you manually edit the agnoster theme,
    #          specifically to have:
    #
    # prompt_dir() {
    #   prompt_segment blue $PRIMARY_FG
    #   print -Pn " $(shrink_path -l -s)"
    # }
    #
    # :(
    zgen load $XDG_CONFIG_HOME/zsh/usr/plugins/shrink-path.zsh

    # generate the init script from plugins above
    zgen save
  fi
fi

