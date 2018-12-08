stow-mac:
	stow bash css docker gcloud git golang irssi lynx macos mackup mutt newsboat node nvim pet pg python r readline ruby rust scala sh stow tmux urlview vim yaml zsh

stow-nix:
	stow bash css docker gcloud git golang irssi lynx mutt newsboat nix node nvim pet pg python r readline ruby rust scala sh stow tmux urlview vim yaml zsh

stow: stow-mac
	@echo "Default to macos"

init:
	git submodule init && git submodule update --init --recursive

update:
	git submodule update --recursive --remote
