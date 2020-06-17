# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/user/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="powerlevel9k/powerlevel9k"
#POWERLEVEL9K_MODE="nerdfont-complete"
#ZSH_THEME="random"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  autojump
  zsh-syntax-highlighting
  zsh-autosuggestions
  colored-man-pages
  zsh-completions
  sudo
  extract
  command-not-found
)

source $ZSH/oh-my-zsh.sh

# User configuration

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export EPICS_ROOT=/home/user/epics
export EPICS_BASE=$EPICS_ROOT/base
export EPICS_BASE_BIN=$EPICS_BASE/bin/linux-x86_64
export EPICS_BASE_LIB=$EPICS_BASE/lib/linux-x86_64

export PATH=/home/.cargo/bin:/home/user/bin/tldr:/home/user/tools:/opt/eclipse:$EPICS_BASE_BIN:/home/user/ninja:/home/user/clion-2020.1/bin:/home/user/the_silver_searcher:/home/user/uftrace/bin:/home/user/PathPicker:$PATH
#export LD_LIBRARY_PATH=$EPICS_BASE_LIB:$LD_LIBRARY_PATH
export NDDSHOME=~/rti_connext_dds-5.3.1
export RTIMEHOME=/home/user/work/PDT/thirdParty/rti_connext_micro.2.4.11

# when in fpp, default action is opened with vscode
export FPP_EDITOR=code

# when in fzf you can press ctrl-o to open vscode
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort',ctrl-f:page-down,ctrl-b:page-up"

# change built-in find command to rust fd
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow -I --exclude .git'

# make Ctrl-T fzf output as well as fzf to use fd command instead
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# make Ctrl-T preview enable
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :500 {}'"

# make Alt-C use fd to change directory
export FZF_ALT_C_COMMAND='fd --type d --hidden --follow -I --exclude .git'

# make Alt-C preview for files like tree command enable
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -100'"

# when use globl * it can also output hidden files which start with dot(.)
setopt dotglob

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval $(thefuck --alias)

alias "c=xclip"
alias "v=xclip -o"
alias "cs=xclip -selection clipboard"
alias "vs=xclip -o -selection clipboard"
alias "css=xclip -selection primary"
alias "vss=xclip -o -selection primary"
alias "cat=bat"
alias "less=bat"
alias "ping=prettyping"
alias "du=ncdu"
alias "top=htop"
alias "fzf=fzf -m --preview 'bat --color=always {} | head -500'"
alias "fd=fd -I --hidden --follow"
alias "pbcopy=xclip -selection clipboard"
alias "pbpaste=xclip -selection clipboard -o"
alias "rg=rg --hidden --no-ignore"