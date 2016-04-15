if brew cask list -1 | grep -q "sublime-text3"; then
    cp ./init/sublime/Packages/User/* ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
    curl http://sublime.wbond.net/Package%20Control.sublime-package > ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Package\ Control.sublime-package
    killall "Sublime Text" &> /dev/null
    subl
else
    echo "Please use brew to install Sublime Text 3 first"
fi

# next time you open sublime, packages should be installed, after which you'll have to restart
# you can update the theme at that point as well, after which you'll need to restart again :/

# newsql/go
# curl -O https://bin.equinox.io/a/em469WiHXbu/newsql-0.2.8-darwin-386.zip
# unzip newsql-0.2.8-darwin-386.zip
# mv newsql /usr/local/bin

# curl -O https://storage.googleapis.com/golang/go1.6.darwin-amd64.tar.gz
# tar -C /usr/local -xzf go1.6.darwin-amd64.tar.gz