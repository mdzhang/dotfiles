CONFIG_FILES = .gitconfig .gitignore_global
cp_file_to_home = cp $(file) ~/$(file);

default: install config

install:
	brew bundle check || brew bundle -v

config:
	$(foreach file, $(CONFIG_FILES), $(cp_file_to_home))

.PHONY: default install config