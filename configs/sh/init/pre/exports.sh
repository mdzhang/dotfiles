#!/bin/sh

export SHELL_NAME=$(ps -hp $$ | tail -n 1 | awk '{print $4}' | cut -c 2-)

