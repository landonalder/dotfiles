# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(git)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin"
source $ZSH/oh-my-zsh.sh

alias gcam='git commit -am'
alias gs='git status'
alias gd='git diff'
alias gp='git push origin HEAD'
alias gpf='gp --force'
alias gpom='git pull origin master'
alias gpod='git pull origin develop'
alias pull='git pull'
alias prune="git branch --merged | grep  -v '\*\|master\|develop' | xargs -n 1 git branch -d"

export EDITOR="vim"

source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Single-brace syntax because this is required in bash and sh alike
if [ -e "$HOME/env/etc/indeedrc" ]; then
    . "$HOME/env/etc/indeedrc"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Single-brace syntax because this is required in bash, dash, zsh, etc
if [ -e "$HOME/env/etc/indeed_profile" ]; then
    . "$HOME/env/etc/indeed_profile"
fi

# OPTIONAL, but recommended: Add ~/env/bin to your PATH to use the shared shell scripts from delivery/env
if [ -d "$HOME/env/bin" ]; then
    PATH="$HOME/env/bin:$PATH"
fi

# On OSX, explicitly source .bashrc so that OS X bash is guaranteed to include all definitions, changing .bashrc to .zshrc for zsh
if [ "Darwin" = "$(uname -s)" ]; then
    [ -s "$HOME/.bashrc" ] && . "$HOME/.bashrc"
fi

# Add dev tool binaries to path
if [ -d "$HOME/.indeed-dev-tools/bin" ]; then
    PATH="$HOME/.indeed-dev-tools/bin:$PATH"
fi

