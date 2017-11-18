export ZPREZTODIR=$DOT_PATH/configs/zsh/prezto

# set default user to hide user@host in agnoster theme prompt
DEFAULT_USER="mdzhang"
# show timestamp in right side prompt
RPROMPT="%*"

if [[ -s "$ZPREZTODIR/init.zsh" ]]; then
  source "$ZPREZTODIR/init.zsh"
fi
