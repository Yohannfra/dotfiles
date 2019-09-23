# ---------------- Mes Alias ----------------- #

alias open="xdg-open"
alias ne="emacs -nw"
alias rm="rm -i"
alias bc="bc -ql"
alias bat="bat -p"
alias l1="ls -1"
alias rt="reset"
# For PYTHON
alias python="python3"
alias py="python3"
alias na="nano"
# For C
alias gww="gcc -Wextra -Werror -Wall"
alias va="valgrind"
# For text editors
alias ne="emacs -nw"
alias emacs="emacs -nw"
alias sbl="/opt/sublime_text/sublime_text"
alias mi="micro"
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
# for JAVA
alias jvc="javac"
alias jv="java"
alias android="sh /home/yohann/Logiciels/android-studio/bin/studio.sh"

alias gdf="git diff --color | diff-so-fancy | less"
alias gtm="git commit -m"
alias gts="git status"
alias gcl="git clone"
alias gta="git add"

alias nt="nautilus . &"
alias joke="curl https://icanhazdadjoke.com/ ; echo"
alias mkae="make"
alias maek="make"
alias ake="make"
alias mke="make"
alias amk="make"
alias amek="make"
alias amke="make"
alias mae="make"
alias mak="make"
alias k="make"
alias ke="make"
alias re="mkae re"
alias meteo="curl wttr.in/Paris"

alias sl="ls"
alias sb="sbl"
alias ks="ls"
alias ys="yarn start"
alias cb="cargo build"
alias cr="cargo run -q "


# set key repeat rate. delay 200 milisecond, 70 per sec
xset r rate 180 80
setxkbmap us
# ---------------------------------------------#
export PATH=$PATH:~/my_scripts
export PATH=$PATH:/usr/local/go/bin
# Path to your oh-my-zsh installation.
export ZSH="/home/yohann/.oh-my-zsh"
ZSH_THEME="robbyrussell"
export EDITOR=vim

export PATH=$PATH:~/.platformio/penv/bin

# Uncomment to use node Js
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

#export PATH=$PATH:/opt/gitkraken
DEFAULT_USER=$USER

# prompt_dir() {
#  prompt_segment blue black "${PWD##*/}"
# }


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
