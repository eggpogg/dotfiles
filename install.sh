#! /bin/bash
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

#
# brew package
#
if [ `which brew` ]; then
    /bin/bash brew_package.sh
else
    echo 'not brew command.'
    echo 'ref: https://brew.sh/index_ja.html'
fi
