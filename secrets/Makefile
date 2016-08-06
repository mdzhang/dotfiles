SECRET_FILES = $(shell ls | grep -E 'sh$$')
cp_file_to_bash_config = cp $(file) ~/.bash_configs/$(file);

default: config caveat

config:
	$(foreach file, $(SECRET_FILES), $(cp_file_to_bash_config))

caveat:
	echo "Restart Terminal or source profile to see changes."

.PHONY: default config caveat