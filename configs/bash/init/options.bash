ulimit -u 512

# default permissions
umask 0077

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# append to the history file, don't overwrite it
shopt -s histappend

ssh-add -l | grep "The agent has no identities" > /dev/null
if [ $? -eq 0 ]; then
  ssh-add
fi
