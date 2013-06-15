alias gitlog="git log --graph --decorate"
alias gitlogg="git log --graph --decorate --full-history"

function gitcom
{
    git commit --signoff -m "$*"
}

function gitcomm
{
    git commit --signoff -S"$GPG_KEY" -m "$*"
}

function ge
{
    $EDITOR "$@"
    git add "$@"
}

function gitpush
{
    git push -u origin `___git_branch_`
}

function gitpull
{
    __gb_=`___git_branch_`
    git checkout "$1"
    git pull
    git checkout $__gb_
    git pull . "$1"
}

function gitp
{
    __gb_=`___git_branch_`
    git pull
    git checkout "$1"
    git pull
    git pull . $__gb_
}



function _____gp___bashrc_
{
    echo "$2"
}
function _____gp__bashrc_
{
    _____gp___bashrc_ `git status -b -s 2>/dev/null`
}
function ___git_branch_
{
    echo `_____gp__bashrc_ | cut -d . -f 1`
}

