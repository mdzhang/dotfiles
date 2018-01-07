#!/bin/sh

# default permissions
umask 0077

ssh-add -l | grep "The agent has no identities" > /dev/null
if [ $? -eq 0 ]; then
  ssh-add
fi
