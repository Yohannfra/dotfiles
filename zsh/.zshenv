alias RTT="JLinkRTTClient"
alias ake="make"
alias amek="make"
alias amk="make"
alias amke="make"
alias bat="bat -p"
alias bc="bc -ql"
alias cf="cd \"\`fd -H -t d . | fzf\`\""
alias cb="cargo build"
alias cdtoto="mkdir /tmp/toto 2>/dev/null ; cd /tmp/toto"
alias cdtk='cd ~/Desktop/Epitech/Tek2'
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
alias cpp="g++"
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
alias vm='nvim'
alias va="valgrind"
alias vf='nvim $(fzf)'
alias vi="nvim"
alias vim="nvim"
alias ys="yarn start"
alias setxkbmap_international='setxkbmap -layout us -variant intl'


URXVT_SIZE=12
URXVT_PROGRESS_SIZE=2

function zp()
{
    URXVT_SIZE=$(echo "$URXVT_SIZE+$URXVT_PROGRESS_SIZE" | bc )
    zoom $URXVT_SIZE
}

function zm()
{
    URXVT_SIZE=$(echo "$URXVT_SIZE-$URXVT_PROGRESS_SIZE" | bc )
    zoom $URXVT_SIZE
}

function zoom()
{
    if [ $# -eq 0 ]; then
        printf '\33]50;%s\007' "xft:DejaVu Sans Mono:size=12"
    else
        printf '\33]50;%s\007' "xft:DejaVu Sans Mono:size=$1"
    fi
}
