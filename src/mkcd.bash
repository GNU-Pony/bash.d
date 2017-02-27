# DESCRIPTION:  Create directories and parents, if missing, and move into the first one
# USAGE:        mkcd <directory> [<additional directories to create>]

mkcd () {
    mkdir -p "$@"
    cd "$1"
}

