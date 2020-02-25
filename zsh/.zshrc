[[ $TERM != "screen" ]] && exec tmux -2
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Node Version Manager
 # export NVM_DIR="$HOME/.nvm"
 # [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Keyboard settings
xset r rate 160 95 # set key repeat rate. delay 160 milisecond, 95 per sec

# Add dirs to $PATH
export PATH=$PATH:~/my_scripts
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:~/.cargo/bin/

# Some other env vars i need
export RUST_BACKTRACE=1
export LANG=en_US.UTF-8
export EDITOR=vim
export ZSH="/home/yohann/.oh-my-zsh"
export DEFAULT_USER=$USER

# disable C-S
stty -ixon

# Zsh theme
ZSH_THEME="robbyrussell"

# Zsh Plugins
plugins=(
  git
  zsh-autosuggestions
)

# FZF Configuration
export FZF_DEFAULT_OPTS='--height 30% --layout=reverse --border'
export FZF_DEFAULT_COMMAND='fd --type f -H --exclude Music \
                            --exclude Pictures --exclude Logiciels --exclude .git'
export CFLAGS='-Wextra -Wall'
export CXXFLAGS='-Wextra -Wall'

# Must stay at the botton of this file
source $ZSH/oh-my-zsh.sh
