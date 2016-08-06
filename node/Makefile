VERSION = 4.4.7

default: install config finish caveat

install:
	brew bundle check || brew bundle -v

config:
	cp ./nodenv.sh ~/.bash_configs/nodenv.sh

# TODO: npm global packages e.g. eslint, bower, mocha, etc
finish:
	$(shell ./nodenv.sh && nodenv install -s ${VERSION} && nodenv global ${VERSION} && nodenv rehash)

caveat:
	echo "Restart Terminal or source profile to see changes."

.PHONY: default install config finish caveat