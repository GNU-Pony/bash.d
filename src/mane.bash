#DESCRIPTION:  Use full block cursor and a palette and clears the screen in TTY and sets TERM to xterm-256color instread of xterm
#USAGE:        mane

function mane
{
    if [ "$TERM" = "linux" ]; then
        echo -en "\e[?8c"
        if [ ! -z "$PALETTE" ]; then
            echo -en "$PALETTE"'\e[H\e[2J'
        fi
    elif [ "$TERM" = "xterm" ]; then
        export TERM=xterm-256color
    fi
}

