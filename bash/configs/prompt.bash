#!/bin/bash

# http://misc.flogisoft.com/bash/tip_colors_and_formatting
# https://en.wikipedia.org/wiki/ANSI_escape_code#Sequence_elements

export PROMPT_DIRTRIM=2
export PS1=$(get_prompt)
