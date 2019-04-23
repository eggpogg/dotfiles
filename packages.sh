#! /bin/bash
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

