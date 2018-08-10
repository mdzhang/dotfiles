if which anyenv > /dev/null; then
  eval "$(anyenv init - --no-rehash)";
fi

if which basher > /dev/null; then
  eval "$(basher init -)"
fi

if which direnv > /dev/null; then
  eval "$(direnv hook $SHELL_NAME)"
fi

if which thefuck > /dev/null; then
  eval "$(thefuck --alias)";
fi

[ -f ~/.fzf.$SHELL_NAME ] && source ~/.fzf.$SHELL_NAME

if which vocab > /dev/null; then
  vocab
fi
