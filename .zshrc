export ZSH=$HOME/.oh-my-zsh

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Theme Config

ZSH_THEME=""
eval $(dircolors -b $HOME/.dircolors)

# Plugins

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
source $HOME/.shell_prompt.sh

# Aliases

alias zshcfg="vim ~/.zshrc"
alias vimcfg="vim ~/.vimrc"

alias node="winpty node.exe"
alias ipython="winpty ipython.exe"
alias php="winpty php.exe"
alias php5="winpty php5.exe"
alias psql="winpty psql.exe"
alias python2.7="winpty python2.7.exe"
