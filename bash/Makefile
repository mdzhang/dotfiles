CONFIG_FILES = .bash_aliases .bash_completion .bash_exports .bash_functions .bash_prompt .bashrc .profile
cp_file_to_home = cp $(file) ~/$(file);

default: config caveat

config:
	mkdir -p ~/.bash_configs && \
	$(foreach file, $(CONFIG_FILES), $(cp_file_to_home))

caveat:
	echo "Restart Terminal or source profile to see changes."

.PHONY: default config caveat