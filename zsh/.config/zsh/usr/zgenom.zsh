#!/bin/zsh -l

export ZGEN_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/zgenom"

# set default user to hide user@host in agnoster theme prompt
export DEFAULT_USER="mdzhang"

if [[ -d "$XDG_CONFIG_HOME/zsh/opt/zgenom" ]]; then
  setopt noshwordsplit
  source "$XDG_CONFIG_HOME/zsh/opt/zgenom/zgenom.zsh"

  # if the init script doesn't exist (normally ~/.local/share/zgenom/init.zsh)
  if ! zgenom saved; then
    ###################
    # Prezto
    ###################

    # load prezto
    zgenom prezto

    #
    # General
    #

    # Color output (auto set to 'no' on dumb terminals).
    zgenom prezto '*:*' color 'yes'

    # prezto modules to load, order matters

    zgenom prezto autosuggestions
    zgenom prezto completion
    zgenom prezto directory
    zgenom prezto docker
    zgenom prezto editor
    zgenom prezto environment
    zgenom prezto history-substring-search
    zgenom prezto homebrew
    zgenom prezto prompt
    zgenom prezto spectrum
    zgenom prezto ssh
    zgenom prezto syntax-highlighting
    zgenom prezto terminal
    zgenom prezto utility

    #
    # Editor
    #

    # use vi key mappings
    zgenom prezto editor key-bindings 'vi'
    # show >>> depending on vi mode
    zgenom prezto editor ps-context 'yes'

    #
    # Prompt
    #

    # set theme
    zgenom prezto prompt theme 'steeef'

    # prompt shows indicator for non-zero return codes for previous command
    zgenom prezto prompt show-return-val 'yes'

    #
    # Terminal
    #

    # Auto set the tab and window titles.
    zgenom prezto terminal auto-title 'yes'

    # Set the window title format.
    zgenom prezto terminal:window-title format '%n@%m: %s'

    # Set the tab title format.
    zgenom prezto terminal:tab-title format '%m: %s'

    # Set the terminal multiplexer title format.
    zgenom prezto terminal:multiplexer-title format '%s'

    # conflicts w/ grc coloring
    zgenom prezto utility:ls dirs-first 'no'
    zgenom prezto utility:ls color 'no'

    ###################
    # Other Third Party
    ###################

    # highlight command line text
    zgenom load zsh-users/zsh-syntax-highlighting
    # fzf/z integration
    zgenom load andrewferrier/fzf-z
    # autocompletions
    zgenom load littleq0903/gcloud-zsh-completion src

    zgenom load zsh-users/zsh-history-substring-search

    bindkey -M vicmd 'k' history-substring-search-up
    bindkey -M vicmd 'j' history-substring-search-down
    bindkey '^[[A' history-substring-search-up
    bindkey '^[[B' history-substring-search-down

    ###################
    # Custom
    ###################

    zgenom load $XDG_CONFIG_HOME/zsh/usr/plugins/completions.zsh

    # mdzhang: this only takes effect if you manually edit the agnoster theme,
    #          specifically to have:
    #
    # prompt_dir() {
    #   prompt_segment blue $PRIMARY_FG
    #   print -Pn " $(shrink_path -l -s)"
    # }
    #
    # :(

    # generate the init script from plugins above
    zgenom save
  fi
  setopt shwordsplit
fi
