# if [ $commands[kubectl] ]; then
#   source <(kubectl completion zsh)
# fi
#
# if [ $commands[helm] ]; then
#   source <(helm completion zsh)
# fi
if which asdf &> /dev/null && [ -d $(asdf where terraform) ]; then
  complete -C "$(asdf where terraform)/bin/terraform" terraform
fi
