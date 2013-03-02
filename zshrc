# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="smt"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(vi-mode git pip git-flow rvm)

# oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=~/bin:~/opt/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

umask 002

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

if [ -d /usr/local/mysql/bin ]
then
    PATH=$PATH:/usr/local/mysql/bin
fi

# This loads RVM 
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  

# autojump
[[ -s ~/.autojump/etc/profile.d/autojump.zsh ]] && source ~/.autojump/etc/profile.d/autojump.zsh

# This line make autojump tab completion work.
# If you get a message like:
#   zsh compinit: insecure directories, run compaudit for list.
#   Ignore insecure directories and continue [y] or abort compinit [n]? y
# just run 'compaudit | xargs chmod g-w'
# see: http://www.snowfrog.net/2009/11/19/cygwin-zsh-zsh-compinit-insecure-directories/
autoload -U compinit; compinit

# virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]
then
    source /usr/local/bin/virtualenvwrapper.sh
fi
