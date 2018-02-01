#!/bin/sh
# for user-specific configs
export XDG_CONFIG_HOME=$HOME/.config
# for user-specific data
export XDG_DATA_HOME=$HOME/.local/share
# for user-specific, non-essential data
export XDG_CACHE_HOME=$HOME/.cache

export VIMINIT=":source $XDG_CONFIG_HOME"/vim/vimrc

export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem

export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PSQL_HISTORY="$XDG_DATA_HOME/pg/psql_history"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"

export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc

export LESSHISTFILE="$XDG_DATA_HOME"/less/history

export HTTPIE_CONFIG_DIR="$XDG_CONFIG_HOME"/httpie

export PYENV_ROOT="$XDG_DATA_HOME"/pyenv
# gem binaries don't like this
# export RBENV_ROOT="$XDG_DATA_HOME"/rbenv
export NODENV_ROOT="$XDG_DATA_HOME"/nodenv
export GOENV_ROOT="$XDG_DATA_HOME"/goenv
export GLIDE_HOME="$XDG_DATA_HOME"/glide

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
