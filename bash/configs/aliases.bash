alias root='sudo su'

# Prevents accidentally clobbering files
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias rmf='rm -f'

alias vi='vim'

alias ls='command ls -G'
alias ll='ls -alFG'
alias ls='ls -G'
alias la='ls -AG'
alias l='ls -CFG'

alias d="ls -al | grep '^d'"     # show the dir's in the current dir
alias h='history'                # show the history of commands issued
alias c='clear'
alias p='ps -ajx | grep'
alias f='find . | grep'
alias g='git'

# Easier navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Always enable colored `grep` output
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias dc="docker-compose"
alias dr="docker"

# IP address
alias ip='ipconfig getifaddr en1'
alias be='bundle exec'
alias nr='npm run'
