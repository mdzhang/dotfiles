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

  brew cleanup
}

gnutools=( gnu-sed coreutils )
for pkg in "${gnutools[@]}"
do
  export PATH="/usr/local/opt/$pkg/libexec/gnubin:$PATH"
  export MANPATH="/usr/local/opt/$pkg/libexec/gnuman:$MANPATH"
done

bintools=( ncurses gettext sqlite )
for pkg in "${bintools[@]}"
do
  export PATH="/usr/local/opt/$pkg/bin:$PATH"
done

ctools=( openssl curl readline bison libiconv bzip2 zlib libpq )
for pkg in "${ctools[@]}"
do
  export CFLAGS="-O2 -g -fno-stack-check $CFLAGS"
  export CFLAGS="-I/usr/local/opt/$pkg/include $CFLAGS"
  export LDFLAGS="-L/usr/local/opt/$pkg/lib $LDFLAGS"
  export CPPFLAGS="-I/usr/local/opt/$pkg/include $CPPFLAGS"
  # export PKG_CONFIG_PATH="/usr/local/opt/$pkg/lib/pkgconfig"
  export PATH="/usr/local/opt/$pkg/bin:$PATH"
done

# NB: do this _after_ homebrew packages added to path, since gnu-bin replaces
#     a few commands and makes them more linux-y, which grc wants
if [ -f "$HOMEBREW_PREFIX/share/google-cloud-sdk/path.$SHELL_NAME.inc" ]; then
  . "$HOMEBREW_PREFIX/share/google-cloud-sdk/path.$SHELL_NAME.inc"
  . "$HOMEBREW_PREFIX/share/google-cloud-sdk/completion.$SHELL_NAME.inc"
fi

[ -f "/usr/local/etc/grc.$SHELL_NAME" ] && . "/usr/local/etc/grc.$SHELL_NAME"
