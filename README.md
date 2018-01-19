# [Dotfiles](https://dotfiles.github.io/)

Laptop setup scripts and personal dotfiles. Uses Thoughbot's [rcm][rcm]

Supports:

* OS X High Sierra (10.13)

Older versions may work but aren't regularly tested

## Installation

Installs source code to `~/.dotfiles` by default

1. Grab source code
    ```sh
    git clone git@github.com:mdzhang/dotfiles.git ~/.dotfiles
    ```

1. Customize with your personal info
  - Replace occurrences of `mdzhang` with your system user name (for me this is also my git handle)
  - Replace occurrences of `zhang.michelle.d@gmail.com` with your email
  - Replace occurrences of `Michelle D Zhang` with your full name

1. Install Ansible (requires Python)
    ```sh
    pip install ansible
    ```

1. Install dotfiles
    ```sh
    env RCRC=$HOME/.dotfiles/rcrc rcup
    ```

## Customization

After updating dotfiles locally, run `rcup` again to update

### Sensitive Information

Add to `config/sh/usr/general/secrets.bash`

## Authors

**Michelle D. Zhang**

  * <http://github.com/mdzhang>

## License

Copyright (c) 2013-2018 Michelle D. Zhang. MIT Licensed, see [LICENSE](LICENSE) for details.

[rcm]: https://github.com/thoughtbot/rcm
