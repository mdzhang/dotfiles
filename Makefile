COMMON = bash css docker gcloud git golang java kitty nix node nvim pet pg python r readline ruby rust scala sh stow tmux urlview vim yaml zsh

stow-mac:
	stow ${COMMON} macos mackup

stow-nix:
	stow ${COMMON} nix

stow: stow-mac
	@echo "Default to macos"

init:
	git submodule init && git submodule update --init --recursive

update:
	git pull --recurse-submodules
	git submodule update --recursive --remote

light:
	git apply switch_to_dark.diff

dark:
	git apply -R switch_to_dark.diff
