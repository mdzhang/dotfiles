# Desktop programs
alias chrome="open -a google\ chrome"

# Get rid of those pesky .DS_Store files recursively
alias dsclean='find . -type f -name .DS_Store -delete'

# For when my video suddenly decides not to work
alias resetvideo='sudo killall VDCAssistant && sudo killall AppleCameraAssistant'

alias ip='ipconfig getifaddr en1'
alias lni='ifconfig | grep "inet " | grep -v 127.0.0.1 | awk "{print $2}" | head -1'

# Homebrew
alias brewc='brew cleanup'
alias brewC='brew cleanup --force'
alias brewi='brew install'
alias brewl='brew list'
alias brewo='brew outdated'
alias brews='brew search'
alias brewu='brew update && brew upgrade'
alias brewx='brew remove'

# Homebrew Cask
alias cask='brew cask'
alias caskc='brew cask cleanup --outdated'
alias caskC='brew cask cleanup'
alias caski='brew cask install'
alias caskl='brew cask list'
alias casko='brew cask outdated'
alias casks='brew cask search'
alias caskx='brew cask uninstall'

# launch kitty
alias lkitty='/Applications/kitty.app/Contents/MacOS/kitty'
