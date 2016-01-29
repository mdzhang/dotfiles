#!/bin/bash

cat /dev/null > ./dotfiles.log

log() {
  printf "`date` [$1]\n" >> ./dotfiles.log
}

# TODO: improve this
replace_file() {
  local path=$1     # our path to file
  local file=$2     # file name
  local base=~/     # where we're copying file to

  # if path is a file
  if [ -r $path ] && [ -f $path ]
  then
    # and there's already a file with that name in ~, remove it
    if [ -r $base$file ] && [ -f $base$file ]; then
      log "Moving $base$file to $base$file.old"
      # rm $base$file 2> /dev/null
      yes | mv $base$file "$base$file.old"
    fi

    # copy our file of the same name over to ~
    log "Replacing $base$file"
    cp $path $base$file
  else
    log "Not a file: $path\n"
  fi
}

get_insert() {
  echo "

if [ -f ~/$1 ]; then
  . ~/$1
fi"
}

# copy over dotfiles to $HOME
for path in ./.{bash_aliases,bash_completion,bash_exports,bash_functions,bash_prompt,bashrc,gitconfig,profile,vimrc}; do
  file=${path:2}
  replace_file $path $file
done
unset file

# copy over secret files to $HOME
if [ -d ./secrets ]; then
  for path in ./secrets/.*; do
    file=${path:10}
    replace_file $path $file

    if [ -r ~/$file ] && [ -f ~/$file ]; then
      insert=$(get_insert "$file")
      printf "$insert" >> ~/.bashrc
      log "Added $file to .bashrc"
    fi
  done
fi

# run changes
. ~/.profile