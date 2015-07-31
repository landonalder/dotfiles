# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home
export http_proxy=http://webproxysea.nordstrom.net:8181
export https_proxy=http://webproxysea.nordstrom.net:8181
export no_proxy=nordstrom.net
export M2_HOME=/usr/local/Cellar/maven/3.3.3/libexec
export M2=$M2_HOME/bin
export TOMCAT_HOME=/usr/local/Cellar/tomcat/8.0.23/libexec

ZSH_THEME="agnoster"

plugins=(git)

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/ut9p/chef/infeng/code/ruby:/usr/local/go/bin:$GOPATH/bin:$HOME/bin:$M2"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
alias be='bundle exec'
alias hb='/Users/ut9p/git/honeybadger/paymentservice'
alias cr='~/chef/nordstrom/chef-repo'
alias cc='~/chef/cookbooks'
alias gcam='git commit -am'
alias gs='git status'
alias gd='git diff'
alias gp='git push origin HEAD'
alias gpom='git pull origin master'
alias gpod='git pull origin develop'
alias pull='git pull'
alias pr='~/bin/pr.rb'

export STASH_PULL_REQUEST_GROUP="sd10"
export STASH_PULL_REQUEST_HIPCHAT_ROOM="HB_SD10"
export STASH_PULL_REQUEST_EXCLUSIONS="ZNM6"

export GOPATH="/Users/ut9p/git/go"
export GOROOT="/usr/local/go/bin"
export EDITOR="vim"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
