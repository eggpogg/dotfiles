#! /bin/bash
brew tap caskroom/cask
brew cask upgrade
brew update --force
brew upgrade

brew install tig
brew install tree
brew install peco
brew install zsh
brew install mas
brew install zsh-autosuggestions
brew install zsh-completions
brew install zsh-syntax-highlighting
brew install rbenv
brew install ruby-build
brew install rbenv-gemset
brew install nvim
brew install nvm
brew install docker
brew cask install docker
brew install pyenv

# pyenv
pyenv install 3.7.2
pyenv global 3.7.2

# nvm setting
nvm install --lts
nvm alias default lts/*
npm update -g npm

# rbenv setting
rm -rf ~/.rbenv/plugins/ruby-build
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 2.6.0
rbenv global 2.6.0

if [ `which gem` ]; then
    echo 'install gem packages...'
    gem install adb-peco
else
    echo 'Dont have gem command.'
fi

