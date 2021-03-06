alias v='vim -S session.vim'
alias l='ls --color=auto'
alias ls='ls --color=auto'
alias la='ls -la'
alias ll='ls -laf'
alias ack='ack --ignore-dir=test/ --ignore-dir=test-results/ --ignore-dir=dist/'
alias tmux='tmux -2'
alias tv='~/.vim/bundle/vim-tidal/bin/tv'
alias myip='ip -c -o -br a'

#git aliases
alias gs="git status"
alias gb="git branch"
alias gp="git pull"
alias gl="git log"
alias glg="git log --graph --full-history --all --color --pretty=format:\"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s\""
alias gap="git add -p"
alias gpr="git pull --rebase"
alias grc="git rebase --continue"
alias gpush="git push"

alias pshell="pipenv shell"
alias pmrs="python manage.py runserver"
alias pms="python manage.py shell"

function gc() {
  git commit -m"$1";
}

function gco() {
  git checkout $1;
}

function gprp() {
  git pull --rebase && git push
}

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=$HOME/.bin:$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/gabriel/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#next two lines are added to make work autojump

#[[ -s /home/gabriel/.autojump/etc/profile.d/autojump.sh ]] && source /home/gabriel/.autojump/etc/profile.d/autojump.sh

. /usr/share/autojump/autojump.sh

autoload -U compinit && compinit -u

setxkbmap -option "ctrl:nocaps"

export NVM_DIR="/home/gabriel/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH=/snap/bin:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

bindkey -v
bindkey "^R" history-incremental-search-backward

### >>> conda initialize >>>
### !! Contents within this block are managed by 'conda init' !!
##__conda_setup="$('/home/gabriel/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
##if [ $? -eq 0 ]; then
##    eval "$__conda_setup"
##else
##    if [ -f "/home/gabriel/anaconda3/etc/profile.d/conda.sh" ]; then
##        . "/home/gabriel/anaconda3/etc/profile.d/conda.sh"
##    else
##        export PATH="/home/gabriel/anaconda3/bin:$PATH"
##    fi
##fi
##unset __conda_setup
### <<< conda initialize <<<

export PATH=$PATH:./node_modules/.bin
export PATH="$(yarn global bin):$PATH"
