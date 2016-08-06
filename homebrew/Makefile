BREW_FILES = Brewfile.core Brewfile.development Brewfile.personal Brewfile.work
brew_install = ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew_bundle_file = brew bundle --file=./$(file) -v;

default: install config finish

brew:
	(which -s brew && $(brew_install)) || brew update

bundler:
	brew tap Homebrew/bundle

install: brew bundler

config:
	cp ./brew.sh ~/.bash_configs/brew.sh && \
	$(foreach file, $(BREW_FILES), $(brew_bundle_file))

finish:
	brew doctor

.PHONY: default brew bundler install config finish