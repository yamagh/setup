#!/bin/sh

brew update
brew upgrade

brew install ghq
brew install hub
brew install peco
brew install terminal-notifier
brew install tmux
brew install lua
brew install vim --with-lua
brew install macvim --with-lua
brew install imagemagick

brew cask install appcleaner
brew cask install bitbar
brew cask install michaelvillar-timer
brew cask install jdownloader

brew cask cleanup
