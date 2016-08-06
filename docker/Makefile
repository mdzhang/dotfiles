default: install config caveat

install:
	brew bundle check || brew bundle -v

config:
	cp ./docker.sh ~/.bash_configs/docker.sh

caveat:
	echo "Restart Terminal or source profile to see changes."

.PHONY: default install config caveat