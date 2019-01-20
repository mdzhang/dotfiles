# for global python packages, else use pyenv
export PATH="$HOME/.local/bin:$PATH"

export PATH="$HOME/.poetry/bin:$PATH"
export PIPENV_IGNORE_VIRTUALENV=1

# Anaconda
if [ "$(uname)" = "Darwin" ]; then
  export ANACONDA_HOME="/usr/local/anaconda3"
else
  export ANACONDA_HOME="$HOME/anaconda3"
fi

# mdzhang: skip this to avoid hiding pyenv shims
# export PATH="$ANACONDA_HOME/bin:$PATH"
export PATH="$ANACONDA_HOME/envs/rstudio/bin:$PATH"
