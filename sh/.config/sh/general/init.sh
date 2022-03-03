export GPG_TTY=$(tty)

if which direnv &> /dev/null; then
  eval "$(direnv hook $SHELL_NAME)"
fi

if [ -f "$HOME/.local/share/asdf/asdf.sh" ]; then
  . $HOME/.local/share/asdf/asdf.sh
elif which brew > /dev/null && [ -f "$(brew --prefix asdf)/asdf.sh" ]; then
  . "$(brew --prefix asdf)/asdf.sh";
fi

if [ -f ~/.asdf/plugins/java/set-java-home.$SHELL_NAME ]; then
  . ~/.asdf/plugins/java/set-java-home.$SHELL_NAME
fi

if which anyenv &> /dev/null; then
  eval "$(anyenv init -)"
fi

if which basher &> /dev/null; then
  eval "$(basher init -)"
fi

if which zoxide &> /dev/null; then
  eval "$(zoxide init $SHELL_NAME)"
fi

[ -f ~/.fzf.$SHELL_NAME ] && source ~/.fzf.$SHELL_NAME

[ -f "/etc/grc.$SHELL_NAME" ] && source /etc/grc.$SHELL_NAME

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
