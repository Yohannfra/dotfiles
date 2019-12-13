[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ALIAS
alias RTT="JLinkRTTClient"
alias ake="make"
alias amek="make"
alias amk="make"
alias amke="make"
alias android="sh /home/yohann/Logiciels/android-studio/bin/studio.sh"
alias bat="bat -p"
alias bc="bc -ql"
alias cf="cd \"\`fd -H -t d . | fzf\`\""
alias cb="cargo build"
alias cdhdc="cd /home/yohann/Desktop/Blackfoot/MY_SFM_15x_SDK/development/SFM/HerdingCats"
alias cdses="cd /home/yohann/Desktop/Blackfoot/new_WSSFM20Rx_15x/development/SFM/demoApp/pca10040/s132/ses/"
alias cdsfm="cd /home/yohann/Desktop/Blackfoot/new_WSSFM20Rx_15x/development/SFM/"
alias cdspc="cd /home/yohann/Desktop/Blackfoot/Spac/Spac_Firmware"
alias cdtoto="mkdir /tmp/toto 2>/dev/null ; cd /tmp/toto"
alias clip="xclip -selection clipboard"
alias cr="cargo run -q "
alias emacs="emacs -nw"
alias f='fzf'
alias gcl="git clone"
alias gdf="git diff --color | diff-so-fancy | bat"
alias gta="git add"
alias gtm="git commit -m"
alias gs="git status"
alias oa='ao'
alias gww="gcc -Wextra -Werror -Wall"
alias joke="curl https://icanhazdadjoke.com/ ; echo"
alias jv="java"
alias jvc="javac"
alias k="make"
alias ke="make"
alias ks="ls"
alias l1="ls -1"
alias lspyc="lsusb | grep 'Microchip Technology'"
alias mae="make"
alias maek="make"
alias mak="make"
alias meteo="curl wttr.in/Paris"
alias mi="micro"
alias mkae="make"
alias mke="make"
alias mtags="ctags --extra=+f --c-kinds=+p -R ."
alias na="nano"
alias ne="emacs -nw"
alias ne="emacs -nw"
alias nt="nautilus . &"
alias open="xdg-open"
alias py="python3"
alias python="python3"
alias re="mkae re"
alias rm="rm -i"
alias rt="reset"
alias sb="sbl"
alias sbl="/opt/sublime_text/sublime_text"
alias sl="ls"
alias top='gotop'
alias v="nvim"
alias va="valgrind"
alias vf='nvim $(fzf)'
alias vi="nvim"
alias vim="nvim"
alias ys="yarn start"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Keyboard settings
xset r rate 180 80 # set key repeat rate. delay 200 milisecond, 70 per sec
setxkbmap us
setxkbmap -option ctrl:nocaps # Disable Caps Lock

# Add dirs to $PATH
export PATH=$PATH:~/my_scripts
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/share/segger_embedded_studio_for_arm_4.22/bin/
export PATH=$PATH:~/.platformio/penv/bin

# SDK PATH
export SDK_PATH=/home/yohann/Desktop/Blackfoot/MY_SFM_15x_SDK

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
# Must stay at the botton of this file
source $ZSH/oh-my-zsh.sh
