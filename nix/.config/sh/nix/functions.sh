#!/usr/bin/env sh

refresh() {
  sudo apt-get upgrade
  sudo apt-get update
  sudo apt-get upgrade
  sudo apt-get autoremove
  sudo apt-get autoclean
  sudo du -sh /var/cache/apt/archives
  sudo apt-get clean
  df -h
}

screenreset() {
  # call to bring panel back if it disappears after moving onto extended display screen
  screens=$(xrandr | grep -c ' connected ')
  echo "found $screens displays"

  if [ "$screens" = 1 ]; then
    gsettings set org.cinnamon panels-enabled "['1:0:left']"
  else
    gsettings set org.cinnamon panels-enabled "['1:1:left']"
  fi
}
