#!/bin/bash

# http://misc.flogisoft.com/bash/tip_colors_and_formatting
# https://en.wikipedia.org/wiki/ANSI_escape_code#Sequence_elements

export PROMPT_DIRTRIM=2
export PROMPT_COMMAND="find_git_branch; find_git_dirty; $PROMPT_COMMAND"
export PS1=$(get_prompt)
