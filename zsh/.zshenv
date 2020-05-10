alias RTT="JLinkRTTClient"
alias ake="make"
alias mka="make"
alias amek="make"
alias mf="make flash"
alias amk="make"
alias maje="make"
alias maj="make"
alias amke="make"
alias bat="bat -p"
alias bc="bc -ql"
alias cb="cargo build"
alias cdtk='cd ~/Desktop/Epitech/Tek2'
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
alias dc="cd"
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
alias re="make re"
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
alias cppcheck="cppcheck -q -j8 --enable=all --force --output-file=cppcheck.xml --xml --xml-version=2 ."

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

function cdtoto()
{
    if [[ -z $1 ]]; then
        mkdir /tmp/toto 2>/dev/null ; cd /tmp/toto ; return
    fi
    case $1 in
        "esp32")
            dirname="esp32"
            ;;
        "nano")
            dirname="arduino_nano"
            ;;
        "uno")
            dirname="arduino_uno"
            ;;
        *)
            if [[ $# -ne 0 ]]; then
                echo "Bad dir name"
                echo "Available options: uno nano esp32"
                return 1
            fi
            ;;
    esac
    if ! [[ -d /tmp/toto_$dirname ]]; then
        mkdir /tmp/toto_$dirname
        cp -r ~/Templates/${dirname}_project/* /tmp/toto_$dirname
    fi
    cd /tmp/toto_$dirname
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
#
