export GEM_HOME="$XDG_DATA_HOME/gem"
export GEM_SPEC_CACHE="$XDG_CACHE_HOME/gem"
# ignore warnings
export RUBYOPT="-W0"

# for global ruby packages, else use rbenv
export PATH="$HOME/.local/share/gem/bin:$PATH"
