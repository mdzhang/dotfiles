#!/bin/bash

# install/update homebrew package manager
which -s brew
if [[ $? != 0 ]] ; then
  echo "Installing brew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Updating brew..."
  brew update
fi

# install brew packages
BREW_PKGS=(
  git
  wget
  mysql
  npm
  rbenv
  ruby-build
  s3cmd
  # brew casks for application installs
  brew-cask
)
PKG_COUNT=${#BREW_PKGS[@]}

for (( i=0;i<$PKG_COUNT;i++)); do
  pkg=${BREW_PKGS[${i}]}

  if brew list -1 | grep -q "^${pkg}\$"; then
    echo "Package '$pkg' is installed"
    brew upgrade "${pkg}"
  else
    echo "Package '$pkg' is not installed"
    brew install "${pkg}"
  fi

done

# other useful brew taps
brew tap caskroom/versions

# symlink casks to /Applications
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

BREW_CASKS=(
  sublime-text3
  1password
  google-chrome
  google-drive
  dropbox
  utorrent
  vlc
  calibre
  flux
  # gimp
  # steam
  # filezilla
  # sequel-pro
  # slack
  # dash
  # tunnelblick
  # mobile-mouse-server
)
CASK_COUNT=${#BREW_CASKS[@]}

# install favorite apps
for (( i=0;i<$CASK_COUNT;i++)); do
  cask=${BREW_CASKS[${i}]}

  if brew cask list -1 | grep -q "^${cask}\$"; then
    echo "Cask '$cask' is installed...continuing"
  else
    echo "Cask '$cask' is not installed"
    brew cask install "${cask}"
  fi

done

# uTorrent doesn't symlink?
# ln -s /opt/homebrew-cask/Caskroom/utorrent/latest/uTorrent.app/ uTorrent.app