# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

plugins=(git)

export PATH="/usr/local/opt/findutils/libexec/gnubin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/opt/gnu-sed/libexec/gnubin:/usr/bin:/usr/sbin:/sbin:/usr/local/go/bin":$PATH
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
testFile() {
    testFolderRegex=\/test\/
    testExtensionRegex=.test
    nameWithoutTestFolder=${1//$testFolderRegex//}
    nameWithoutTestExtension=${nameWithoutTestFolder//$testExtensionRegex/}
    npx jest $1 --coverage --collectCoverageFrom=$nameWithoutTestExtension
};

export EDITOR="vim"


# Single-brace syntax because this is required in bash, dash, zsh, etc
if [ -e "$HOME/env/etc/indeed_profile" ]; then
    . "$HOME/env/etc/indeed_profile"
fi

# OPTIONAL, but recommended: Add ~/env/bin to your PATH to use the shared shell scripts from delivery/env
if [ -d "$HOME/env/bin" ]; then
    PATH="$HOME/env/bin:$PATH"
fi

# Add dev tool binaries to path
if [ -d "$HOME/.indeed-dev-tools/bin" ]; then
    PATH="$HOME/.indeed-dev-tools/bin:$PATH"
fi


source /Users/lalder/Documents/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# BEGIN env Setup -- Managed by Ansible DO NOT EDIT.

# Setup INDEED_ENV_DIR earlier.
if [ -z "${INDEED_ENV_DIR}" ]; then
    export INDEED_ENV_DIR="/Users/lalder/env"
fi

# Single-brace syntax because this is required in bash and sh alike
if [ -e "${INDEED_ENV_DIR}/etc/indeedrc" ]; then
    . "${INDEED_ENV_DIR}/etc/indeedrc"
fi
# END env Setup -- Managed by Ansible DO NOT EDIT.

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U promptinit; promptinit
prompt pure
