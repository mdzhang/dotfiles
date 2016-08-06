# TODO: homebrew must be run first; sublime unstable; osx unstable
SUITES = homebrew git ruby node secrets docker mysql vim osx
start = printf "\n========================\nRunning suite: $(SUITE)\n";
end = printf "\nFinished suite: $(SUITE)\n========================\n";
run_suite =  $(start) $(MAKE) --directory=./$(SUITE); $(end)

default:
	echo "Not implemented"

all:
	$(foreach SUITE, $(SUITES), $(run_suite))

# example usage:
#   make suite SUITE=node
suite:
	$(run_suite)

.PHONY: default all suite