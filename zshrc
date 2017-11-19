export ZPREZTODIR=$DOT_PATH/configs/zsh/prezto

# show timestamp in right side prompt
RPROMPT="%*"

if [[ -s "$ZPREZTODIR/init.zsh" ]]; then
  source "$ZPREZTODIR/init.zsh"
fi
