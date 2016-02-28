default: dotfiles

all: osx brew dotfiles sublime

# overwrite AppleScript defaults
osx:
	mkdir -p ~/Pictures/Screenshots && \
	mkdir -p ~/Code									&& \
	./scripts/osx.sh

# install/update brew packages and casks
brew:
	./scripts/brew.sh

# just update dotfiles
dotfiles:
	mkdir -p ~/.vim						&& \
	mkdir -p ~/.vim/backups		&& \
	mkdir -p ~/.vim/swaps			&& \
	mkdir -p ~/.vim/undo			&& \
	./scripts/dotfiles.sh

# update sublime preferences & packages
sublime:
	./scripts/sublime.sh

.PHONY: all osx brew dotfiles sublime