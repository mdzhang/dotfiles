#!/bin/bash

# install homebrew package manager
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git wget mysql

# for installing os x apps
brew install caskroom/cask/brew-cask

# alternate brew cask versions
brew tap caskroom/versions

# just to make sure
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# install favorite apps
brew cask install sublime-text3
brew cask install 1password
brew cask install google-chrome
brew cask install google-drive
brew cask install dropbox
brew cask install utorrent
brew cask install vlc
brew cask install calibre
# brew cask install steam
# brew cask install filezilla
# brew cask install sequel-pro
# brew cask install slack
# brew cask install dash
# brew cask install tunnelblick
# brew cask install gimp
# brew cask install mobile-mouse-server
brew cask install flux

# uTorrent doesn't symlink?
ln -s /opt/homebrew-cask/Caskroom/utorrent/latest/uTorrent.app/ uTorrent.app