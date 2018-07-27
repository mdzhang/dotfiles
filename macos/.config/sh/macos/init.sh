#!/bin/sh

#
# Configuration for packages installed with Homebrew
#

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

brew_update() {
  brew doctor
  brew update
  brew upgrade --cleanup
  brew cleanup
  brew cask cleanup
}

# Bash completion dir: /usr/local/etc/bash_completion.d
# zsh completions dir: /usr/local/share/zsh/site-functions

if [ -d /usr/local/opt/gnu-sed/bin ]; then
  export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
  export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"
fi

if [ -d /usr/local/opt/coreutils/bin ]; then
  export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
  export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi

if [ -d /usr/local/opt/ncurses/bin ]; then
  export PATH="/usr/local/opt/ncurses/bin:$PATH"
fi

if which pyenv-virtualenv > /dev/null; then
  export PYENV_VIRTUALENV_DISABLE_PROMPT=1
  eval "$(pyenv virtualenv-init -)";
fi

if [ -d /usr/local/opt/openssl/bin ]; then
  export PATH="/usr/local/opt/openssl/bin:$PATH"
fi

# for GNU envsubst
if [ -d /usr/local/opt/gettext/bin ]; then
  export PATH="/usr/local/opt/gettext/bin:$PATH"
fi

if [ -d /usr/local/opt/sqlite/bin ]; then
  export PATH="/usr/local/opt/sqlite/bin:$PATH"
fi
