# skip macos, postfix for now
stow:
	stow bash css docker gcloud git golang irssi lynx mackup mutt newsboat node nvim pet pg python r readline ruby rust scala sh stow tmux urlview vim yaml zsh

init:
	git submodule init && git submodule update --init --recursive
