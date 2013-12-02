#DESCRIPTION:  Build from makefile on all CPU:s
#USAGE:        m [options] [variable] [rules]

alias m='make -j'


#DESCRIPTION:  Rebuild from makefile on all CPU:s
#USAGE:        mm [options] [variable] [rules]

alias mm='make -j -B'


#DESCRIPTION:  Open a programs info manual and open the invoking chapter
#USAGE:        i [program]

function i()
{
    info "$@" invoking
}


#DESCRIPTION:  Open a programs info manual
#USAGE:        i [program] [node]

function ii()
{
    info "$@"
}


#DESCRIPTION:  Go to the parent directory
#USAGE:        ..

alias ..="cd .."


#DESCRIPTION:  Run a command under `sudo`
#USAGE:        _ [command]

alias _="sudo"


#DESCRIPTION:  Pipe `yes` to a command
#USAGE:        y [command]

function y()
{
    yes | "$@"
}
