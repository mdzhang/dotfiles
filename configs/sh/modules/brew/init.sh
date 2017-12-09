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

if which rbenv > /dev/null; then
  # export RUBY_CONFIGURE_OPTS="--with-readline-dir=`brew --prefix readline` --with-openssl-dir=`brew --prefix openssl`"
  eval "$(rbenv init -)";
fi

if which nodenv > /dev/null; then
  eval "$(nodenv init -)";
fi

if which goenv > /dev/null; then
  eval "$(goenv init -)";
fi

if which direnv > /dev/null; then
  eval "$(direnv hook $SHELL_NAME)"
fi

if which pyenv > /dev/null; then
  eval "$(pyenv init -)";
fi

if which pyenv-virtualenv > /dev/null; then
  export PYENV_VIRTUALENV_DISABLE_PROMPT=1
  eval "$(pyenv virtualenv-init -)";
fi

if [ -f /usr/local/etc/profile.d/z.sh ]; then
  . /usr/local/etc/profile.d/z.sh
fi

if [ -d /usr/local/opt/openssl/bin ]; then
  export PATH="/usr/local/opt/openssl/bin:$PATH"
fi

if [ -d /usr/local/opt/sqlite/bin ]; then
  export PATH="/usr/local/opt/sqlite/bin:$PATH"
fi

if which thefuck > /dev/null; then
  eval "$(thefuck --alias)";
fi
