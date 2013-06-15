function mane
{
    if [ "$TERM" = "linux" ]; then
        echo -en "\e[?8c"
        if [ ! "$PALETTE" = "" ]; then
            "$PALETTE\e[H\e[2J"
        fi
    elif [ "$TERM" = "xterm" ]; then
        export TERM=xterm-256color
    fi
}

