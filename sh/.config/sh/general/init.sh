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

ssh-add -l | grep "The agent has no identities" > /dev/null
if [ $? -eq 0 ]; then
  ssh-add
fi
