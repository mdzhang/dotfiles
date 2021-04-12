export GOPATH="$HOME/src/go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN"

if which asdf > /dev/null; then
  goversion=$(asdf current golang | awk -F ' ' '{print $2}' | tr -d '\n')
  export GOROOT="$HOME/.asdf/installs/golang/$goversion/go"
fi
