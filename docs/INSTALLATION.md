# Installation

Grab this repo and run the installation script.
* `curl -LOk https://github.com/mdzhang/dotfiles/archive/master.zip`
* `unzip master.zip`
* `cd dotfiles-master`
* update your name and email in `.gitconfig`
* `make`

### TODO

* use Applescript for some of the post-installation items

### Post-installation Checklist

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
    * tunnelblick
    * everything else
* Apps that can't be installed w/ Brew
    * BetterSnapTool
* Don't slightly dim the display when on battery power
* Don't automatically adjust brightness
* Set default applications for file types
* No guest account
* keyboard backlights off
* enable US - International PC and Japanese keyboards
* set finder favorite items
    * `~`
    * `~/Code`
* customize dock items
    * com.apple.dock, persistent-apps
    * https://github.com/hjuutilainen/dotfiles/blob/master/bin/setup-dock.py
* Profile pic
* Keyboard access - all controls