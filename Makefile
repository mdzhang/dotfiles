default: dotfiles

all: osx brew dotfiles sublime

# overwrite AppleScript defaults
osx:
	mkdir -p ~/Pictures/Screenshots && \
	mkdir -p ~/Code									&& \
	./.osx

# install/update brew packages and casks
brew:
	./brew.sh

# just update dotfiles
dotfiles:
	mkdir -p ~/.vim						&& \
	mkdir -p ~/.vim/backups		&& \
	mkdir -p ~/.vim/swaps			&& \
	mkdir -p ~/.vim/undo			&& \
	./dotfiles.sh

# update sublime preferences & packages
sublime:
	./sublime.sh

.PHONY: all osx brew dotfiles sublime