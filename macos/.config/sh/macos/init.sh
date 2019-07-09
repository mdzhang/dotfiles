#!/bin/sh

#
# Configuration for packages installed with Homebrew
#

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export HOMEBREW_INSTALL_CLEANUP=1

brew_update() {
  brew doctor
  brew update
  brew upgrade

  brew cask doctor
  brew cask upgrade

  brew cleanup
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

if [ -d /usr/local/opt/groovy/bin ]; then
  export GROOVY_HOME="/usr/local/opt/groovy/libexec"
fi

if [ -d /usr/local/opt/openssl/bin ]; then
  export CFLAGS="-I/usr/local/opt/openssl/include $CFLAGS"
  export LDFLAGS="-L/usr/local/opt/openssl/lib $LDFLAGS"
  export CPPFLAGS="-I/usr/local/opt/openssl/include $CPPFLAGS"
  export PATH="/usr/local/opt/openssl/bin:$PATH"
fi

if [ -d /usr/local/opt/readline/lib ]; then
  export CFLAGS="-I/usr/local/opt/readline/include $CFLAGS"
  export LDFLAGS="-L/usr/local/opt/readline/lib $LDFLAGS"
fi

# Fix for zlib issue on Mojave
# https://github.com/pyenv/pyenv/issues/530
export CFLAGS="-I$(xcrun --show-sdk-path)/usr/include $CFLAGS"

# for GNU envsubst
if [ -d /usr/local/opt/gettext/bin ]; then
  export PATH="/usr/local/opt/gettext/bin:$PATH"
fi

if [ -d /usr/local/opt/sqlite/bin ]; then
  export PATH="/usr/local/opt/sqlite/bin:$PATH"
fi

if [ -d /usr/local/opt/sbt@0.13/bin ]; then
  export PATH="/usr/local/opt/sbt@0.13/bin:$PATH"
fi

if [ -d /Applications/SnowSQL.app/Contents/MacOS ]; then
  export PATH="/Applications/SnowSQL.app/Contents/MacOS:$PATH"
fi

# NB: do this _after_ homebrew packages added to path, since gnu-bin replaces
#     a few commands and makes them more linux-y, which grc wants
[ -f "/usr/local/etc/grc.$SHELL_NAME" ] && source "/usr/local/etc/grc.$SHELL_NAME"
