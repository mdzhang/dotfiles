# [Dotfiles](https://dotfiles.github.io/)

Laptop setup scripts and personal dotfiles. Uses [GNU Stow][stow]

Supports:

* OS X High Sierra (10.13)
* (K)Ubuntu 17.10

Older versions may work but aren't regularly tested

## Installation

Installs source code to `~/.dotfiles` by default

1. Grab source code
    ```sh
    git clone git@github.com:mdzhang/dotfiles.git ~/.dotfiles
    git submodule init && git submodule update --init --recursive
    ```

1. Customize with your personal info
  - Replace occurrences of `mdzhang` with your system user name (for me this is also my git handle)
  - Replace occurrences of `zhang.michelle.d@gmail.com` with your email
  - Replace occurrences of `Michelle D Zhang` with your full name

1. Install [`stow`][stow] on your OS

1. Stow folders you're interested in
    ```sh
    stow git
    stow bash
    stow sh
    stow vim
    ...
    ```

1. Remove them later if you want
    ```sh
    stow -D bash
    stow zsh
    ```

### Sensitive Information

Add to `sh/.config/sh/general/secrets.sh`

## Authors

**Michelle D. Zhang**

  * <http://github.com/mdzhang>

## License

Copyright (c) 2013-2018 Michelle D. Zhang. MIT Licensed, see [LICENSE](LICENSE) for details.

[stow]: https://www.gnu.org/software/stow/manual/stow.html
