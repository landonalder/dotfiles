# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(git)

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/go/bin"
source $ZSH/oh-my-zsh.sh

alias gcam='git commit -am'
alias gs='git status'
alias gd='git diff'
alias gp='git push origin HEAD'
alias gpom='git pull origin master'
alias gpod='git pull origin develop'
alias pull='git pull'
alias prune="git branch --merged | grep  -v '\*\|master\|develop' | xargs -n 1 git branch -d"

export EDITOR="vim"

source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
