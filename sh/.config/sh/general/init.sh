if which anyenv > /dev/null; then
  eval "$(anyenv init -)";
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

if which fasd > /dev/null; then
  eval "$(fasd --init auto)"
fi

[ -f ~/.fzf.$SHELL_NAME ] && source ~/.fzf.$SHELL_NAME

if which vocab > /dev/null; then
  vocab
fi
