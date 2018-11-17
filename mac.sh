#!/bin/sh

brew update
brew upgrade

brew install ghq
brew install hub
brew install peco
brew install terminal-notifier
brew install tmux
brew install reattach-to-user-namespace
brew install lua
brew install vim --with-lua
brew install macvim --with-lua --with-python3 --with-override-system-vim
brew install imagemagick
brew install rbenv
brew install pyenv

brew cask install google-chrome
brew cask install dropbox
brew cask install todotxt
brew cask install appcleaner
brew cask install bitbar
brew cask install michaelvillar-timer
brew cask install jdownloader

brew tap dteoh/sqa
brew cask install slate
brew cask install slowquitapps
brew cask install clipy
brew cask install docker

# Quick Look plugins
# https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlimagesize
brew cask install webpquicklook
brew cask install suspicious-package
brew cask install quicklookase
brew cask install qlvideo

brew cask cleanup

pip install todotxt-machine

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh


ghq get kmyk/online-judge-tools

