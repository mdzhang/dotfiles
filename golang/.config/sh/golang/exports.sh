export GOPATH="$HOME/src/go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN"

if which asdf > /dev/null; then
  GOV=$(asdf where golang)
  export GOROOT=$GOV/go
fi
