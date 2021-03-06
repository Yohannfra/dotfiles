[[ $TERM != "screen" ]] && exec tmux -2
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Node Version Manager
 # export NVM_DIR="$HOME/.nvm"
 # [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Keyboard settings
xset r rate 190 95 # set key repeat rate. delay 160 milisecond, 95 per sec

# Add dirs to $PATH
export PATH=$PATH:~/my_scripts
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:~/go/bin/
export PATH=$PATH:~/.cargo/bin/
export PATH=$PATH:~/.platformio/penv/bin/
export PATH=$PATH:~/.gem/ruby/2.7.0/bin

export PATH=$PATH:~/Downloads/nrf_cmd_tools/JLink_Linux_V680a_x86_64
export PATH=$PATH:~/Downloads/SES/arm_segger_embedded_studio_v452_linux_x64_nordic/bin/

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

# export QTWEBENGINE_CHROMIUM_FLAGS=--ignore-gpu-blacklist
# export QT_XCB_GL_INTEGRATION=xcb_egl

# open manpages man in vim
function viman ()
{
    text=$(command man "$@") && echo "$text" | \
        nvim -R --cmd 'let g:NoVimProject=1' \
            +":set ft=man nomod nonu noma nolist colorcolumn=" -
}
alias man='viman'

# Must stay at the botton of this file
source $ZSH/oh-my-zsh.sh

export IDF_PATH="${HOME}/esp/esp-idf"
alias get_idf='. $HOME/esp/esp-idf/export.sh'
