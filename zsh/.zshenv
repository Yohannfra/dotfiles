alias RTT="JLinkRTTClient"
alias ake="make"
alias mka="make"
alias amek="make"
alias amk="make"
alias maje="make"
alias maj="make"
alias amke="make"
alias bat="bat -p"
alias bc="bc -ql"
alias cb="cargo build"
alias cdtk='cd ~/Desktop/Epitech/Tek2'
alias cdtoto="mkdir /tmp/toto 2>/dev/null ; cd /tmp/toto"
alias cf="cd \"\`fd -H -t d . | fzf\`\""
alias chmox="chmod"
alias exe="chmod +x"
alias clip="xclip -selection clipboard"
alias cpp="g++"
alias cr="cargo run -q "
alias emacs="emacs -nw"
alias f='fg'
alias gcl="git clone"
alias gf="fg"
alias gs="git status"
alias gta="git add"
alias gtm="git commit -m"
alias gut="git"
alias gww="gcc -Wextra -Werror -Wall"
alias gxx="g++"
alias joke="curl https://icanhazdadjoke.com/ ; echo"
alias jv="java"
alias jvc="javac"
alias k="make"
alias ke="make"
alias ks="ls"
alias l1="ls -1"
alias mae="make"
alias maek="make"
alias mak="make"
alias meteo="curl wttr.in/Paris"
alias mi="micro"
alias mkae="make"
alias mke="make"
alias mtags="ctags --extras=+f --c-kinds=+p -R ."
alias na="nano"
alias ne="emacs -nw"
alias ne="emacs -nw"
alias nt="nautilus . &"
alias oa='ao'
alias open="xdg-open"
alias py="python3"
alias python="python3"
alias re="mkae re"
alias rm="rm -i"
alias rt="reset"
alias sb="sbl"
alias sbl="/opt/sublime_text/sublime_text"
alias setxkbmap_international='setxkbmap -layout us -variant intl'
alias sl="ls"
alias t='true && clear'
alias top='gotop'
alias v="nvim"
alias va="valgrind"
alias valog="valgrind --log-file=valgrind_log.txt"
alias vf='nvim $(fzf)'
alias vi="nvim"
alias vim="nvim"
alias vm='nvim'
alias ys="yarn start"
alias mouli='sudo docker run --rm -it -v $PWD:/home/ -w /home epitechcontent/epitest-docker bash'
alias moulip='sudo docker run --rm -it -v $PWD:/home/ -w /home --privileged epitechcontent/epitest-docker bash'
alias cc='cd ~/Desktop && cf'
alias st="echo $?"
alias gti="git"

URXVT_SIZE=12
URXVT_PROGRESS_SIZE=2

alias cdp="cd ~/Desktop/Epitech/Tek2/Units/"

function gdf()
{
    if [[ -d ".git" ]]; then
        git diff $1 --color | diff-so-fancy
    fi
    return 1
}

function cdtotoarduino()
{
    if [[ -d /tmp/toto_arduino ]] ; then
        cd /tmp/toto_arduino/
        return
    fi
    mkdir /tmp/toto_arduino/
    cp -r ~/Templates/arduino_project/* /tmp/toto_arduino/
    cd /tmp/toto_arduino/
}

function cdtotoesp()
{
    if [[ -d /tmp/toto_esp32 ]] ; then
        cd /tmp/toto_esp32/
        return
    fi
    mkdir /tmp/toto_esp32/
    cp -r ~/Templates/esp32_project/* /tmp/toto_esp32/
    cd /tmp/toto_esp32/
}

# function zp()
# {
#     URXVT_SIZE=$(echo "$URXVT_SIZE+$URXVT_PROGRESS_SIZE" | bc )
#     zoom $URXVT_SIZE
# }

# function zm()
# {
#     URXVT_SIZE=$(echo "$URXVT_SIZE-$URXVT_PROGRESS_SIZE" | bc )
#     zoom $URXVT_SIZE
# }

# function z()
# {
#     URXVT_SIZE=12
#     zoom $URXVT_SIZE
# }

# function zoom()
# {
#     if [ $# -eq 0 ]; then
#         printf '\33]50;%s\007' "xft:DejaVu Sans Mono:size=12"
#     else
#         printf '\33]50;%s\007' "xft:DejaVu Sans Mono:size=$1"
#     fi
# }
