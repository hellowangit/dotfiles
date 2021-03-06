# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export EDITOR='vim'


# robbyrussell
ZSH_THEME="blinks"

#aliases
alias zshconfig="vim ~/.zshrc"

# vps
alias vps_1024_1="ssh root@106.186.119.150"

# svn
alias svn_add_all="svn st |grep '^\?' | awk '{print \$2}' | xargs svn add"
alias svn_delete_all="svn st |grep '^\!' | awk '{print \$2}' | xargs svn rm"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vim-interaction svn)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:$PATH
export NODE_PATH=/usr/local/bin/node_modules/
export SVN_EDITOR=vim
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# autojump os X
[[ -s `brew --prefix`/etc/autojump.sh  ]] && . `brew --prefix`/etc/autojump.sh

# autojump ubuntu
# [[ -s /home/wanglonghai/.autojump/etc/profile.d/autojump.sh  ]] && source /home/wanglonghai/.autojump/etc/profile.d/autojump.sh

# autoload -U compinit && compinit -u


# Base16 Shell
if [ -z "$THEME" ]; then
    export THEME="base16-flat"
fi
if [ -z "$BACKGROUND" ]; then
    export BACKGROUND="dark"
fi

DOTFILES=$HOME/dotfiles

BASE16_SHELL="$DOTFILES/.config/base16-shell/$THEME.$BACKGROUND.sh"
# [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
source $BASE16_SHELL

source $DOTFILES/.config/tmuxinator.zsh
