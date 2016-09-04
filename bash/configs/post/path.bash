if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi

if which nodenv > /dev/null; then
  eval "$(nodenv init -)";
fi

if which docker-machine > /dev/null; then
  eval "$(docker-machine env)"
fi
