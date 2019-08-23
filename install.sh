#! /bin/bash
echo 'start install...'

#
# setup
#
# 作業ディレクトリに移動
cd $(dirname $0)

#
# TODO: zshが入っているかの確認
#

#
# TODO: pretzが入っているかの確認
#

#
# default
#
ln -snf ~/dotfiles/.gvimrc ~/.gvimrc
ln -snf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -snf ~/dotfiles/.viminfo ~/.viminfo
ln -snf ~/dotfiles/.vimrc ~/.vimrc
ln -snf ~/dotfiles/.zshrc ~/.zshrc
ln -snf ~/dotfiles/.gitconfig ~/.gitconfig
ln -snf ~/dotfiles/.tigrc ~/.tigrc

#
# set pretzo
#
ln -snf ~/dotfiles/prezto/zlogin ~/.zlogin
ln -snf ~/dotfiles/prezto/zlogout ~/.zlogout
ln -snf ~/dotfiles/prezto/zpreztorc ~/.zpreztorc
ln -snf ~/dotfiles/prezto/zprofile ~/.zprofile
ln -snf ~/dotfiles/prezto/zshenv ~/.zshenv

ln -snf ~/dotfiles/prezto/zlogin $HOME/.zprezto/runcoms/zlogin
ln -snf ~/dotfiles/prezto/zlogout $HOME/.zprezto/runcoms/zlogout
ln -snf ~/dotfiles/prezto/zpreztorc $HOME/.zprezto/runcoms/zpreztorc
ln -snf ~/dotfiles/prezto/zprofile $HOME/.zprezto/runcoms/zprofile
ln -snf ~/dotfiles/prezto/zshenv $HOME/.zprezto/runcoms/zshenv

# theme
ln -snf ~/dotfiles/prezto/theme/prompt_mypure_setup $HOME/.zprezto/modules/prompt/functions

#
# brew package
#
if [ `which brew` ]; then
    ./packages.sh
else
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ./packages.sh
fi
