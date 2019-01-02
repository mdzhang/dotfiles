export GPG_TTY=$(tty)

# mdzhang: this is slow
if which anyenv > /dev/null; then
  eval "$(anyenv init - --no-rehash $SHELL_NAME)";
fi

if which pyenv-virtualenv > /dev/null; then
  export PYENV_VIRTUALENV_DISABLE_PROMPT=1
  eval "$(pyenv virtualenv-init - --no-rehash)";
fi

if which basher > /dev/null; then
  eval "$(basher init -)"
fi

if which direnv > /dev/null; then
  eval "$(direnv hook $SHELL_NAME)"
fi

[ -f ~/.fzf.$SHELL_NAME ] && source ~/.fzf.$SHELL_NAME

# grc for linux
[ -f "/etc/grc.$SHELL_NAME" ] && source /etc/grc.$SHELL_NAME
# grc for macos
[ -f "/usr/local/etc/grc.$SHELL_NAME" ] && source /usr/local/etc/grc.$SHELL_NAME

# add all SSH keys
for possiblekey in ${HOME}/.ssh/id_*; do
    if grep -q PRIVATE "$possiblekey"; then
      # see if it's already been added
      ssh-add -l | grep "$(ssh-keygen -lf $possiblekey | awk '{print $2}')" > /dev/null

      # if not, add it
      if [ $? -eq 1 ]; then
        ssh-add "$possiblekey"
      fi
    fi
done
