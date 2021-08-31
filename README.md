# [Dotfiles](https://dotfiles.github.io/)

Laptop setup scripts and personal dotfiles. Uses [GNU Stow][stow]

Supports:

* OS X Catalina (10.15)
* (K)Ubuntu 18.04

Older versions may work but aren't regularly tested

## Prerequisites

- Packages installed by [laptop script](https://github.com/mdzhang/laptop)

## Installation

Installs source code to `~/.dotfiles` by default

1. Grab source code
    ```sh
    git clone git@github.com:mdzhang/dotfiles.git ~/.dotfiles
    git submodule init && git submodule update --init --recursive
    ```

1. Customize with your personal info
    - Replace occurrences of `mdzhang` with your system user name (for me this is also my git handle)
    - Replace occurrences of `md.zhang.aka@gmail.com` with your email
    - Replace occurrences of `m d zhang` with your full name
    - Update GPG `user.signingkey` in `git/.gitconfig`

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

**m d zhang**

  * <http://github.com/mdzhang>

## License

Copyright (c) 2013-2021 m d zhang. MIT Licensed, see [LICENSE](LICENSE) for details.

[stow]: https://www.gnu.org/software/stow/manual/stow.html
