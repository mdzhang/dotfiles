if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi

if which nodenv > /dev/null; then
  eval "$(nodenv init -)";
fi

if which direnv > /dev/null; then
  eval "$(direnv hook bash)"
fi

export PYENV_VIRTUALENV_DISABLE_PROMPT=1
if which pyenv > /dev/null; then
  eval "$(pyenv init -)";
fi

if which pyenv-virtualenv > /dev/null; then
  eval "$(pyenv virtualenv-init -)";
fi

if which jenv > /dev/null; then
  eval "$(jenv init -)"
  export PATH="$HOME/.jenv/bin:$PATH"
fi

if [ -f /usr/local/etc/profile.d/z.sh ]; then
  . /usr/local/etc/profile.d/z.sh
fi