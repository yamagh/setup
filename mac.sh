#!/bin/sh

brew update
brew upgrade

brew install ghq
brew install hub
brew install peco
brew install terminal-notifier
brew install tmux
brew install lua
#brew install vim --with-lua
brew install macvim --with-lua --with-python3 --with-override-system-vim
brew install imagemagick

brew cask install appcleaner
brew cask install bitbar
brew cask install michaelvillar-timer
brew cask install jdownloader

brew cask cleanup

pip install todotxt-machine

