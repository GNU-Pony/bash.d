#DESCRIPTION:  Build from makefile on all CPU:s
#USAGE:        m [options] [variable] [rules]

alias m='make -j'


#DESCRIPTION:  Rebuild from makefile on all CPU:s
#USAGE:        mm [options] [variable] [rules]

alias mm='make -j -B'


#DESCRIPTION:  Open a programs info manual and open the invoking chapter
#USAGE:        iv [program]

iv () {
    prog="$1"
    shift 1
    info "($prog)" invoking "$@"
}

#DESCRIPTION:  Open a programs info manual and try to select a usage page
#USAGE:        iu [program] [node]

iu () {
    info --usage "$@"
}

#DESCRIPTION:  Open a programs info manual
#USAGE:        i [program] [node]

i () {
    prog="$1"
    shift 1
    info "($prog)" "$@"
}


#DESCRIPTION:  Go to the parent directory
#USAGE:        ..

alias ..="cd .."


#DESCRIPTION:  Run a command under `sudo`
#USAGE:        _ [command]

alias _="sudo"


#DESCRIPTION:  Pipe `yes` to a command
#USAGE:        y [command]

y () {
    yes | "$@"
}

