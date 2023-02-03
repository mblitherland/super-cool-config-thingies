
# set PATH so it includes user's private bin directories
# PATH="$HOME/bin:$HOME/.local/bin:$PATH:/usr/lib/chromium-browser/"

export WORKON_HOME=~/Envs
# source /usr/local/bin/virtualenvwrapper.sh
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ git:(\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]\n$ "
#export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]\n$ "

# Only for OSX
#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#  . $(brew --prefix)/etc/bash_completion
#fi

# Docker things
# Create this volume first:
# docker volume create ruby-bundle-cache
alias docked='docker run --rm -it -v ${PWD}:/rails -v ruby-bundle-cache:/bundle -p 3000:3000 ghcr.io/rails/cli'

dcleanup(){
    docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
    docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
}
dcleanup_for_real(){
    # Delete all containers
    docker rm $(docker ps -a -q)
    # Delete all images
    docker rmi $(docker images -q)
}

# AWS information
export AWS_ACCESS_KEY_ID=redacted
export AWS_SECRET_ACCESS_KEY=redacted

export NODE_ENV=development

export EDITOR=vim
