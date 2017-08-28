if which rbenv > /dev/null; then
  # export RUBY_CONFIGURE_OPTS="--with-readline-dir=`brew --prefix readline` --with-openssl-dir=`brew --prefix openssl`"
  eval "$(rbenv init -)";
fi

if which nodenv > /dev/null; then
  eval "$(nodenv init -)";
fi

if which goenv > /dev/null; then
  eval "$(goenv init -)";
  export GOPATH=$HOME/Code/mdzhang/go
  export PATH=$PATH:$(go env GOPATH)/bin
fi

if which direnv > /dev/null; then
  eval "$(direnv hook bash)"
fi

export PYENV_VIRTUALENV_DISABLE_PROMPT=1
if which pyenv > /dev/null; then
  eval "$(pyenv init -)";
fi

if command -v brew > /dev/null; then
  if brew ls --versions pyenv-virtualenv > /dev/null; then
    eval "$(pyenv virtualenv-init -)";
  fi
fi

if which jenv > /dev/null; then
  eval "$(jenv init -)"
  export PATH="$HOME/.jenv/bin:$PATH"
fi

if [ -f /usr/local/etc/profile.d/z.sh ]; then
  . /usr/local/etc/profile.d/z.sh
fi

if [ -d /usr/local/opt/openssl/bin ]; then
  export PATH="/usr/local/opt/openssl/bin:$PATH"
fi

if [ -d /usr/local/opt/sqlite/bin ]; then
  export PATH="/usr/local/opt/sqlite/bin:$PATH"
fi

ssh-add -l | grep "The agent has no identities" > /dev/null
if [ $? -eq 0 ]; then
  ssh-add
fi
