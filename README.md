# [Dotfiles](https://dotfiles.github.io/)

Laptop setup scripts and personal dotfiles. Uses Thoughbot's [rcm][rcm]

Supports:

* OS X High Sierra (10.13)
* Raspbian (8, jessie)

Older versions may work but aren't regularly tested

## Installation

Installs source code to `~/.dotfiles` by default

1. Grab source code

    ```
    git clone git@github.com:mdzhang/dotfiles.git ~/.dotfiles
    ```

1. Replace occurrences of `mdzhang` with your system user name

1. Run preinstall scripts for system e.g.

    ```
    ./hooks/bin/osx/preinstall
    ```

1. Install dotfiles

    ```
    env RCRC=$HOME/.dotfiles/rcrc rcup
    ```

## Customization

After updating dotfiles locally, run `rcup` again to update

### Sensitive Information

Add to `configs/sh/modules/general/secrets.bash`

## Authors

**Michelle D. Zhang**

  * <http://github.com/mdzhang>

## License

Copyright (c) 2013-2017 Michelle D. Zhang. MIT Licensed, see [LICENSE](LICENSE) for details.

[rcm]: https://github.com/thoughtbot/rcm
