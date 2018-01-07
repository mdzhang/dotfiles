#!/bin/sh

export VIMINIT=":source $XDG_CONFIG_HOME"/vim/vimrc

export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem

export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PSQL_HISTORY="$XDG_CACHE_HOME/pg/psql_history"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"

export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc

export LESSHISTFILE="$XDG_CACHE_HOME"/less/history

export HTTPIE_CONFIG_DIR="$XDG_CONFIG_HOME"/httpie
