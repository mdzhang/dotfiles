export GEM_HOME="$XDG_DATA_HOME/gem"
export GEM_SPEC_CACHE="$XDG_CACHE_HOME/gem"
# ignore warnings
export RUBYOPT="-W0"

# Erlang/Elixir
export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac"
if [ -d /opt/homebrew/bin/ ]; then
  export KERL_CONFIGURE_OPTIONS="$KERL_CONFIGURE_OPTIONS --with-ssl=$(brew --prefix openssl)"
fi

# for global ruby packages, else use rbenv
export PATH="$HOME/.local/share/gem/bin:$PATH"
