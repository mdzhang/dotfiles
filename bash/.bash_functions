#!/bin/sh

# extract most know archives with one command
function extract () {
  if [ -f $1 ]
  then
    case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)           echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# make and cd into directory
function mcd() {
  mkdir -p "$1" && cd "$1";
}

# find text in any file
function ft() {
  grep --color=auto -nr "$1" .
}

# man page search
function mans() {
  man -P less\ -p\ \""${1}"\" ${2};
}

# tail a file
function tl() {
  tail -n "$1" -F "$2"
}

function port_hog() {
  sudo netstat -lpn | grep :"$1"
}

function dock_bash() {
  docker exec -it "$1" /bin/bash
}