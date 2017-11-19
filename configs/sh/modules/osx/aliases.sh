# Desktop programs
alias chrome="open -a google\ chrome"

# Get rid of those pesky .DS_Store files recursively
alias dsclean='find . -type f -name .DS_Store -delete'

# For when my video suddenly decides not to work
alias resetvideo='sudo killall VDCAssistant && sudo killall AppleCameraAssistant'

alias ip='ipconfig getifaddr en1'
alias lni='ifconfig | grep "inet " | grep -v 127.0.0.1 | awk "{print $2}" | head -1'

