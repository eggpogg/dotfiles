export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8
#
# Source Prezto.
#
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
# --------------------------------
# Customize to your needs...
# --------------------------------
#
# aliases
#
alias -g @g='| grep'
alias -g @x='| xargs'
alias -g @pbc='| pbcopy'
#
# peco
#
function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection
#
# local config
#
if [ -e ~/.zshrc_local ]; then
  source ~/.zshrc_local
fi
#
# node
#
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
export NVM_DIR="/Users/kihare/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#
#PATH
#
export PATH=$PATH:/Users/kihare/Workspaces/config/android-sdk-macosx-2.4/platform-tools
export PATH=$PATH:/Users/kihare/Workspaces/config/android-sdk-macosx-2.4/tools
export PATH=$PATH:/Users/kihare/Workspaces/config/android-sdk-macosx-2.4/build-tools/22.0.1
export PATH=$PATH:/Users/kihare/Workspaces/config/dex2jar-2.0
#
# GVM golang version manaager
#
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
export GOROOT_BOOTSTRAP=$HOME/go1.4
export GOPATH=$HOME/Workspaces/go
export PATH=$PATH:$GOPATH/bin
export PATH=/opt/local/bin:$PATH
