if brew cask list -1 | grep -q "sublime-text3"; then
    cp ./init/sublime/Packages/User/* ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
    # curl http://sublime.wbond.net/Package%20Control.sublime-package > ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Package\ Control.sublime-package
    # cp ./init/sublime/Installed\ Packages/Package\ Control.sublime-package ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/
    killall "Sublime Text" &> /dev/null
    subl
else
    echo "Please use brew to install Sublime Text 3 first"
fi