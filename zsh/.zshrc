export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share

export ZPREZTODIR=$XDG_CONFIG_HOME/zsh/opt/prezto
export HISTFILE="$XDG_DATA_HOME/zsh/history"

# show timestamp in right side prompt
RPROMPT="%*"

if [[ -s "$ZPREZTODIR/init.zsh" ]]; then
  source "$ZPREZTODIR/init.zsh"
fi

_load_settings "$XDG_CONFIG_HOME/zsh/usr"

