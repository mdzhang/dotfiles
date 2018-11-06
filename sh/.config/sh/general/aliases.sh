alias root='sudo su'

alias d="ls -al | grep '^d'"     # show the dir's in the current dir
alias da='direnv allow'
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
alias l='ls -1A'         # Lists in one column, hidden files.
alias la='ll -Alh'         # Lists human readable sizes, hidden files.

# Always enable colored `grep` output
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias tf='terraform'
