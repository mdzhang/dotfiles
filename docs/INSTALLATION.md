# Installation

Grab this repo and run the installation script.
* `curl -LOk https://github.com/mdzhang/dotfiles/archive/master.zip`
* `unzip master.zip`
* `cd dotfiles-master`
* `./install.sh`

### Post-installation Checklist

* TODO: script some of the below
* Installed apps to setup (in order):
    * Dropbox
    * 1Password
    * Chrome
        * Sync Options > Change Folder Location to `~/Dropbox/Google\ Drive`
    * git SSH setup
        * `ssh-keygen -t rsa -b 4096 -C "zhang.michelle.d@gmail.com"`
        * `pbcopy < ~/.ssh/id_rsa.pub`
    * Calibre
        * use `~/Library/Application Support/Calibre/Library` to store books
    * everything else
* Don't slightly dim the display when on battery power
* Don't automatically adjust brightness
* Set default applications for file types
* No guest account
* Terminal
    * choose Pro as Terminal theme
* Menubar
    * display time with seconds and full date
* Keyboard
    * backlights off
    * enable US - International PC and Japanese keyboards
* Finder
    * setup favorite items
        * `~`
        * `~/Code`
* Dock
    * customize dock items (
        * TODO: com.apple.dock, persistent-apps)
        * https://github.com/hjuutilainen/dotfiles/blob/master/bin/setup-dock.py
* Apps
    * BetterSnapTool
* Setup user login items
    * BetterSnapTool