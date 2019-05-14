# [Dotfiles](https://dotfiles.github.io/)

Laptop setup scripts and personal dotfiles. Uses [GNU Stow][stow]

Supports:

* OS X High Sierra (10.13)
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
    - Replace occurrences of `zhang.michelle.d@gmail.com` with your email
    - Replace occurrences of `Michelle D Zhang` with your full name
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

1. `stow` will symlink a variety of files under e.g. `$XDG_CONFIG_HOME/sh/`, but to source them from your `~.*rc` file, they need to be specified in `local_modules` in [`sh/.shrc`](./sh/.shrc) as well. These have a reasonable default, but may need to be updated based on additional local changes.

### Sensitive Information

Add to `sh/.config/sh/general/secrets.sh`

## Authors

**Michelle D. Zhang**

  * <http://github.com/mdzhang>

## License

Copyright (c) 2013-2019 Michelle D. Zhang. MIT Licensed, see [LICENSE](LICENSE) for details.

[stow]: https://www.gnu.org/software/stow/manual/stow.html
