# ~/.bash_profile

#
# CONFIGURATION
#

export PS1=" --->> "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced  # wasn't sure where this came from. maybe a default? https://apple.stackexchange.com/a/33679/94120

#
# SHORTCUTS
#

alias ll="ls -lahG"

alias gr="git remote -v"
alias gpom="git pull origin master"
alias gb="git branch"
alias gl="git log"
alias gs="git status"
alias gd="git diff"
alias glt="git log --graph --decorate --oneline --full-history --all --simplify-by-decoration"
# alias glsd="git ls-files --deleted"
# alias grbi2="git rebase -i HEAD~2"
# alias gpop="git stash pop"

alias rspc="bundle exec rspec spec/"

# shows/hides all folders and files on the desktop. started doing this for screencasting, but is now my default preference :-D
alias deskhide="defaults write com.apple.finder CreateDesktop false && killall Finder"
alias deskshow="defaults write com.apple.finder CreateDesktop true && killall Finder"

# which ports are running on my computer right now?
alias myports="lsof -i -P | grep -i 'listen'"















#
# stuff below was added via various installations, only included here for reference 
# if starting on a new machine or configuring for the first time:
# ... prefer to leave it out and allow installations to re-write as necessary
#





#
# Node Version Manageger (NVM)
#

export NVM_DIR="/Users/mjr/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#
# Ruby Environment/Version Manager (RBENV)
#

export RBENV_ROOT=/usr/local/var/rbenv
eval "$(rbenv init -)"

#
# Android Studio
#

export ANDROID_HOME="/Users/mjr/Library/Android/sdk"
export PATH=~/Library/Android/sdk/tools:$PATH # enable use of the `android` cli
export PATH=~/Library/Android/sdk/platform-tools:$PATH # enable use of the `adb` cli

#
# GO
#

export GOPATH=$(go env GOPATH)
export PATH=$(go env GOPATH)/bin:$PATH
#export PATH=$PATH:/usr/local/opt/go/libexec/bin

#
# Python Version Manager (Anaconda)
#

# added by Anaconda3 5.3.1 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
