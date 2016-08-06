# TODO: untested; known issue with theme

SUBLIME_PATH = ~/Library/Application\ Support/Sublime\ Text\ 3

default: install config caveat

install:
	brew bundle check || brew bundle -v

config:
	cp ./Packages/User/* ${SUBLIME_PATH}/Packages/User/ && \
  curl http://sublime.wbond.net/Package%20Control.sublime-package > ${SUBLIME_PATH}/Installed\ Packages/Package\ Control.sublime-package

caveat:
	echo "Restart Subime to see changes."

.PHONY: default install config caveat