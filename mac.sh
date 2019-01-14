#!/bin/sh

brew update
brew upgrade

brew install ghq
brew install hub
brew install unrar
brew install peco
brew install terminal-notifier
brew install tmux
brew install reattach-to-user-namespace
brew install lua
#brew install vim --with-lua
brew unlink vim && brew install macvim --with-lua --with-python3 --with-override-system-vim
brew install imagemagick
brew install rbenv
brew install pyenv
brew install poppler
brew install pngquant

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

# Quick Look plugins - https://github.com/sindresorhus/quick-look-plugins
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
ghq get yamagh/yamagh.github.io

# Take screencaptures per minutes with cron
crontab -l > tmpcrontab
cat <<'EOF' >> tmpcrontab
0/1 * * * * [ 60 -lt `/usr/sbin/ioreg -c IOHIDSystem | /usr/bin/awk '/HIDIdleTime/ {print int($NF/1000000000); exit}'` ] && exit; d=`date +/Users/yamagh/Pictures/ScreenLog/\%Y/\%m/\%d`; f=$d/`date +\%Y-\%m-\%d-\%H\%M\%S`.png; sudo -u yamagh mkdir -p $d && sudo -u yamagh /usr/sbin/screencapture -x $f && /usr/local/bin/pngquant --speed 1 --ext .png --force $f
EOF
uniq tmpcrontab tmp2crontab && crontab tmp2crontab && rm tmpcrontab && rm tmp2crontab
crontab -l

