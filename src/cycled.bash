#DESCRIPTION:  Cycling of working directories

#DESCRIPTION:  Save the current working directory to the cycle
#USAGE:        swd

#DESCRIPTION:  Go to the next working directory in the cycle
#USAGE:        cwd

#DESCRIPTION:  Go to the previous working directory in the cycle
#USAGE:        Cwd

#DESCRIPTION:  Reset the cycle
#USAGE:        zwd


__dir_ring=()
__ring_dir=0

function swd
{
    __dir_ring+=( "$(pwd)" )
}

function cwd
{
    if [ ! ${#__dir_ring[@]} = 0 ]; then
        (( __ring_dir++ ))
        if [ $__ring_dir = ${#__dir_ring[@]} ]; then
            __ring_dir=0
        fi
        cd "${__dir_ring[$__ring_dir]}"
    fi
}

function Cwd
{
    if [ ! ${#__dir_ring[@]} = 0 ]; then
        (( __ring_dir-- ))
        if [ $__ring_dir = -1 ]; then
            __ring_dir=$(( ${#__dir_ring[@]} - 1 ))
        fi
        cd "${__dir_ring[$__ring_dir]}"
    fi
}

function zwd
{
    __dir_ring=()
    __ring_dir=0
}

