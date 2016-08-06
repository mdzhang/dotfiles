VIM_DIRS = ~/.vim ~/.vim/backups ~/.vim/swaps ~/.vim/undo
mk_dir = mkdir -p $(path);

default: config caveat

make_dirs:
	$(foreach path, $(VIM_DIRS), $(mk_dir))

move_dotfile:
	cp ./.vimrc ~/.vimrc

config: make_dirs move_dotfile

caveat:
	echo "Restart Terminal or source profile to see changes."

.PHONY: default make_dirs move_dotfile config caveat