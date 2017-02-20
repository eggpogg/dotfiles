#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
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