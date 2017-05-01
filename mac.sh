#!/bin/sh

brew update
brew upgrade

brew install ghq
brew install hub
brew install peco
brew install terminal-notifier
brew install tmux

brew cask install appcleaner
brew cask install bitbar
brew cask install michaelvillar-timer
brew cask install jdownloader

brew cask cleanup
