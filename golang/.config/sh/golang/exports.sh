export GOPATH="$HOME/src/go"
export PATH="$PATH:$GOPATH/bin"

export GLIDE_HOME="$XDG_DATA_HOME/glide"

if which asdf > /dev/null; then
  goversion=$(asdf current golang | awk -F ' ' '{print $2}' | tr -d '\n')
  export GOROOT="$HOME/.asdf/installs/golang/$goversion/go"
fi
