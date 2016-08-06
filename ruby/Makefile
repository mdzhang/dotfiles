VERSION = 2.3.1

default: install config finish caveat

install:
	brew bundle check || brew bundle -v

config:
	cp ./rbenv.sh ~/.bash_configs/rbenv.sh

# TODO: ruby globals packages e.g. bundler, rubocop
finish:
	$(shell ./rbenv.sh && rbenv install -s ${VERSION} && rbenv global ${VERSION} && rbenv rehash)

caveat:
	echo "Restart Terminal or source profile to see changes."

.PHONY: default install config finish caveat