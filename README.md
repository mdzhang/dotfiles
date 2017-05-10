# [Dotfiles](https://dotfiles.github.io/)

Personal dotfiles. Uses Thoughbot's [rcm][rcm]

## Pre-installation

1. Follow [laptop setup here][laptop]

OR

1. Install [Homebrew](http://brew.sh/) and [git](https://git-scm.com/)

## Installation

### Manual

1. Grab source code

    ```
    git clone git://github.com/mdzhang/dotfiles.git ~/.dotfiles
    ```

1. Install [rcm][rcm]

    ```
    brew tap thoughtbot/formulae
    brew install rcm
    ```

1. Install dotfiles

    ```
    env RCRC=$HOME/.dotfiles/rcrc rcup
    ```

### Using Homebrew

```
brew tap mdzhang/formulae
brew install mdzhang/formulae/dotfiles
```

## Customization

After updating dotfiles locally, run `rcup` again to update

### Sensitive Information

Add to `configs/bash/configs/secrets.sh`

## Authors

**Michelle D. Zhang**

  * <http://github.com/mdzhang>

## License

Copyright (c) 2013-2017 Michelle D. Zhang. MIT Licensed, see [LICENSE](LICENSE.md) for details.

[laptop]: https://github.com/mdzhang/laptop
[rcm]: https://github.com/thoughtbot/rcm
