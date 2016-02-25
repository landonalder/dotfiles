# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_51.jdk/Contents/Home
export http_proxy=http://webproxysea.nordstrom.net:8181
export https_proxy=http://webproxysea.nordstrom.net:8181
export no_proxy=nordstrom.net,localhost,127.0.0.1,192.168.99.102
export M2_HOME=/usr/local/Cellar/maven/3.3.3/libexec
export M2=$M2_HOME/bin
export TOMCAT_HOME=/usr/local/Cellar/tomcat/8.0.23/libexec
export CHEF_ORG=UIS
export ps_env=dev
export pr_reviewers="ut9p,qg3w,qnqr,x3jx"

ZSH_THEME="agnoster"

plugins=(git)

export PATH="$HOME/Library/Haskell/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/go/bin:$GOPATH/bin:$M2"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
alias be='bundle exec'
alias pay='/Users/ut9p/Documents/workspace/paymentservice'
alias config='/Users/ut9p/Documents/workspace/configservice'
alias persist='/Users/ut9p/Documents/workspace/persistenceservice'
alias logging='/Users/ut9p/Documents/workspace/loggingservice'
alias crm='/Users/ut9p/Documents/workspace/crm'
alias cr='~/chef/nordstrom/chef-repo'
alias cc='~/chef/cookbooks'
alias gcam='git commit -am'
alias gs='git status'
alias gd='git diff'
alias gp='git push origin HEAD'
alias gpom='git pull origin master'
alias gpod='git pull origin develop'
alias pull='git pull'
alias ws='~/Documents/Workspace'
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias idea="open -a \"/Applications/IntelliJ IDEA 16 EAP.app/\""
alias prune="git branch --merged | grep  -v '\*\|master\|develop' | xargs -n 1 git branch -d"

export STASH_PULL_REQUEST_GROUP="sd10"
export STASH_PULL_REQUEST_HIPCHAT_ROOM="HB_Hydra"
export STASH_PULL_REQUEST_EXCLUSIONS="ZNM6"

export GOPATH="/Users/ut9p/git/go"
export GOROOT="/usr/local/go/bin"
export EDITOR="vim"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

source /Users/ut9p/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
