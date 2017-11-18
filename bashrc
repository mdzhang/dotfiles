_load_settings "$DOT_PATH/configs/bash/init/functions"
_load_settings "$DOT_PATH/configs/bash/init"

if [ -f ~/.bashrc.local ]; then
  . ~/.bashrc.local
fi

