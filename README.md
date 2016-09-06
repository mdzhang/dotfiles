# [Dotfiles](https://dotfiles.github.io/)

Personal dotfiles. Uses Thoughbot's [rcm](https://github.com/thoughtbot/rcm)

## Pre-installation

Optionally, follow [laptop setup here][laptop].

[laptop]: https://github.com/mdzhang/laptop

Else, just make sure you have [Homebrew](http://brew.sh/) and [git](https://git-scm.com/) installed.

## Installation

Clone onto your laptop:

```
git clone git://github.com/mdzhang/dotfiles.git ~/dotfiles
```

Install rcm:

```
brew tap thoughtbot/formulae
brew install rcm
```

Install the dotfiles:

```
env RCRC=$HOME/dotfiles/rcrc rcup
```

Can run `rcup` later to update:

```
rcup
```

### Customization

You _can_ add personal overrides in `~/dotfiles-local` or in `~/dotfiles` with a `*.local` suffix, but you should probably just fork this repo and commit your personalizations.

### Sensitive Information

Add to `bash/configs/secrets.sh`

## Authors

**Michelle D. Zhang**

  * <http://github.com/mdzhang>

## License

Copyright (c) 2013-2016 Michelle D. Zhang. MIT Licensed, see [LICENSE](LICENSE.md) for details.
