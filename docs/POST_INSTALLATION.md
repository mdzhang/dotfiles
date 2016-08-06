# Post-installation Checklist

## Applications to Setup (In Order)

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

## Mac App Store Apps

* BetterSnapTool

## OS X Items

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

## TODOs

* use Applescript, `brew mas` for some of the post-installation items