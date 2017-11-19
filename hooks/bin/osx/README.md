# OS X Setup/Teardown scripts

## TODOs

Figure out how to script the following:

1. Setup developer CLI tools
    ```
    docker login
    heroku login
    keybase login
    ```
1. Per-application configs
    - Calibre
        - store books at `~/media/data/books`
1. Don't slightly dim the display when on battery power
1. Don't automatically adjust brightness
1. enable US International PC and Japanese keyboards
1. Configure OS X Dock Applications
    - checkout `dockutils` e.g. as used [here](https://github.com/mihaliak/dotfiles/blob/master/macos/dock.sh)
    - apps include
        - Finder
        - Terminal
        - Chrome
        - 1Password
        - Messages
        - System Preferences
        - NordVPN
1. Startup Applications
    - BetterSnapTool
    - Flux
    - Dropbox
1. default keyboard backlights off
1. Finder
    - Customize toolbar (add path, connect)
    - Custom Favorites in sidebar
        - `$HOME`
        - `~/Dropbox`
        - `/Applications`
        - `~/opt`
        - `~/media`
1. [Maximize keyboard shortcut](http://simianuprising.com/2010/03/15/mac-osx-setting-a-keyboard-shortcut-for-maximizeresize-window-green-jewel/)
1. Disable Mission Control keyboard shortcuts (i.e. C-u, C-d, etc.) since they interfere w/ tmux
