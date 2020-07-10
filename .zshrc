export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8
#
# Source Prezto.
#
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
#
# rbenv
#
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
#
# pyenv
#
export PYENV_ROOT=$HOME/.pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
#
# --------------------------------
# import functions
# --------------------------------
source ~/dotfiles/functions/.functions
# --------------------------------
# Customize to your needs...
# --------------------------------
#
# aliases
#
alias -g @g='| grep'
alias -g @x='| xargs'
alias -g @pbc='| pbcopy'
alias -g adb='adb-peco'
alias -g adbo='~/Library/Android/sdk/platform-tools/adb'
alias javarepl='java -jar ~/workspaces/tool/java-repl/javarepl-431.jar'
alias jrepl=javarepl
alias top=htop
alias man=tldr
alias find=fd
alias du=ncdu
alias ssh-add-normal='ssh-add -D > /dev/null 2>&1; kill -0 ${SSH_AGENT_PID} > /dev/null 2>&1; if [ $? -ne 0 ]; then eval `ssh-agent`; fi; ssh-add ~/.ssh/id_rsa'
alias zgit='cat ~/.zprezto/modules/git/alias.zsh | grep "alias "'
alias d='docker'
alias dc='docker-compose'
alias dcnt='docker container'
alias dcur='docker container ls -f status=running -l -q'
alias dexec='docker container exec -it $(dcur)'
alias dimg='docker image'
alias drun='docker container run --rm -d'
alias drunit='docker container run --rm -it'
alias dstop='docker container stop $(dcur)'
#
# trash function
#
mkdir -p ~/trash 2>/dev/null
function trash() { mv $1 ~/trash }
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
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#
#PATH
#
export PATH=$JAVA_HOME/bin:$PATH
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"
export PATH="$PATH:$HOME/workspaces/flutter/flutter/bin"
#
# GVM golang version manaager
#
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
export GOROOT_BOOTSTRAP=$HOME/go1.4
export GOPATH=$HOME/Workspaces/go
export PATH=$PATH:$GOPATH/bin
export PATH=/opt/local/bin:$PATH
#
# This loads nvm bash_completion
#
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
