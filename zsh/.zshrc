[[ $TERM != "screen" ]] && exec tmux
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias mouli='sudo docker run --rm -it -v $PWD:/home/ -w /home epitechcontent/epitest-docker bash'
alias moulip='sudo docker run --rm -it -v $PWD:/home/ -w /home --privileged epitechcontent/epitest-docker bash'

# Node Version Manager
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Keyboard settings
xset r rate 170 85 # set key repeat rate. delay 180 milisecond, 80 per sec

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

export TERM_IS_TRANSPARENT=`cat ~/.Xresources | grep transparent | grep true`

# Must stay at the botton of this file
source $ZSH/oh-my-zsh.sh
