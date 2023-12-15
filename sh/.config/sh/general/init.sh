export GPG_TTY=$(tty)

if [ -d /opt/homebrew/bin/ ]; then
  eval $(/opt/homebrew/bin/brew shellenv)
fi

if [ -f "$HOME/.local/share/asdf/asdf.sh" ]; then
  . $HOME/.local/share/asdf/asdf.sh
elif which brew >/dev/null && [ -f "$(brew --prefix asdf)/libexec/asdf.sh" ]; then
  . "$(brew --prefix asdf)/libexec/asdf.sh"
fi

if [ -d ~/.pulumi/bin ]; then
  export PATH="$HOME/.pulumi/bin:$PATH"
fi

if which direnv &>/dev/null; then
  eval "$(direnv hook $SHELL_NAME)"
fi

if which anyenv &>/dev/null; then
  eval "$(anyenv init -)"
fi

if which basher &>/dev/null; then
  eval "$(basher init -)"
fi

if which zoxide &>/dev/null; then
  eval "$(zoxide init $SHELL_NAME)"
fi

[ -f ~/.fzf.$SHELL_NAME ] && source ~/.fzf.$SHELL_NAME

[ -f "/etc/grc.$SHELL_NAME" ] && source /etc/grc.$SHELL_NAME

# add all SSH keys
for possiblekey in ${HOME}/.ssh/id_*; do
  if grep -q PRIVATE "$possiblekey"; then
    # see if it's already been added
    ssh-add -l | grep "$(ssh-keygen -lf $possiblekey | awk '{print $2}')" >/dev/null

    # if not, add it
    if [ $? -eq 1 ]; then
      ssh-add "$possiblekey"
    fi
  fi
done
