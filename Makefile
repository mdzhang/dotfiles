default: dotfiles

all: osx brew dotfiles sublime

osx:
	mkdir -p ~/Pictures/Screenshots && \
	mkdir -p ~/Code									&& \
	./.osx

brew:
	./brew.sh

dotfiles:
	mkdir -p ~/.vim						&& \
	mkdir -p ~/.vim/backups		&& \
	mkdir -p ~/.vim/swaps			&& \
	mkdir -p ~/.vim/undo			&& \
	./dotfiles.sh

sublime:
	./sublime.sh

.PHONY: all osx brew dotfiles sublime