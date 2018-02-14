# skip macos, postfix for now
stow:
	stow bash docker gcloud git golang irssi lynx mackup mutt newsboat node nvim pet pg python readline ruby rust sh stow urlview vim zsh

init:
	git submodule init && git submodule update --init --recursive