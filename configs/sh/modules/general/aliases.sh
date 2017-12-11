alias root='sudo su'

alias d="ls -al | grep '^d'"     # show the dir's in the current dir
alias h='history'                # show the history of commands issued
alias c='clear'
alias p='ps -ajx | grep'
alias f='fuck'                   # alias fuck from thefuck
alias rmf='rm -f'
alias mkdir='mkdir -p'

# Prevents accidentally clobbering files
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'

alias less='less -N'     # Show line numbers
alias du='du -H'         # Human readable unit formatting

# ls variants
alias ll='ls -alF'       # List lots of info and with handy visual indicators, including for hidden files
alias lk='ll -S'         # Lists sorted by size, largest last.
alias lt='ll -t'         # Lists sorted by date, most recent last.
alias sl='ls'            # I often screw this up.

# Easier navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Always enable colored `grep` output
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Affects vim integration
alias ag='ag --path-to-ignore ~/.ignore'
