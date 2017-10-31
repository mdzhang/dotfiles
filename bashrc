export DOT_PATH=$HOME/.dotfiles

_load_settings() {
  _dir="$1"
  if [ -d "$_dir" ]; then
    for config in $_dir/*; do
      if [ -f "$config" ]; then
        . "$config"
      fi
    done
  fi
}

_load_settings "$DOT_PATH/configs/bash/init/functions"
_load_settings "$DOT_PATH/configs/bash/init"

# local config
[[ -f ~/.bashrc.local ]] && source ~/.bashrc.local
