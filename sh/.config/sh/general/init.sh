if which anyenv > /dev/null; then
  eval "$(anyenv init -)";
fi

if which basher > /dev/null; then
  eval "$(basher init -)"
fi
