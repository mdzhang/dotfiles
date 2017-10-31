# [Dotfiles](https://dotfiles.github.io/)

Personal dotfiles. Uses Thoughbot's [rcm][rcm]

Supports:

* OS X High Sierra (10.13)
* Raspbian (8, jessie)

Older versions may work but aren't regularly tested

## Pre-installation

1. Follow [laptop setup here][laptop]

## Installation

### Manual

1. Grab source code
    ```sh
    git clone git@github.com:mdzhang/dotfiles.git ~/.dotfiles
    ```

1. Install [rcm][rcm]

1. Install dotfiles

    ```
    env DOT_PATH=$HOME/.dotfiles env RCRC=$HOME/.dotfiles/rcrc rcup
    ```

## Customization

After updating dotfiles locally, run `rcup` again to update

### Sensitive Information

Add to `configs/bash/init/secrets.sh`

## Authors

**Michelle D. Zhang**

  * <http://github.com/mdzhang>

## License

Copyright (c) 2013-2017 Michelle D. Zhang. MIT Licensed, see [LICENSE](LICENSE.md) for details.

[laptop]: https://github.com/mdzhang/laptop
[rcm]: https://github.com/thoughtbot/rcm
