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

ctools=( openssl readline bison libiconv bzip2 zlib )
for pkg in "${ctools[@]}"
do
  export CFLAGS="-I/usr/local/opt/$pkg/include $CFLAGS"
  export LDFLAGS="-L/usr/local/opt/$pkg/lib $LDFLAGS"
  export CPPFLAGS="-I/usr/local/opt/$pkg/include $CPPFLAGS"
  # export PKG_CONFIG_PATH="/usr/local/opt/$pkg/lib/pkgconfig"
  export PATH="/usr/local/opt/$pkg/bin:$PATH"
done

# Fix for zlib issue on Mojave
# https://github.com/pyenv/pyenv/issues/530
export CFLAGS="-I$(xcrun --show-sdk-path)/usr/include $CFLAGS"

# NB: do this _after_ homebrew packages added to path, since gnu-bin replaces
#     a few commands and makes them more linux-y, which grc wants
[ -f "/usr/local/etc/grc.$SHELL_NAME" ] && . "/usr/local/etc/grc.$SHELL_NAME"

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

gcloud_path="$HOMEBREW_PREFIX/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.$SHELL_NAME.inc"
if [ -f "/$gcloud_path" ]; then
   ."$gcloud_path"
fi
