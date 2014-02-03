#DESCRIPTION:  ls with long listing, classification with appendix character, hidden files and the . and .. directories
#USAGE:        ll

alias ll='ls -alF'


#DESCRIPTION:  ls with hidden files
#USAGE:        (la | lsh)

alias la='ls -A'
alias lsh='ls -A'


#DESCRIPTION:  ls with classification with appendix character
#USAGE:        l

alias l='ls -CF'


#DESCRIPTION:  ls with colours even when piped
#USAGE:        lsc

alias lsc='ls --color=always'


#DESCRIPTION:  Use colours in ls when the output is not piped

alias ls='ls --color=auto'


#DESCRIPTION:  ll with directories before files
#USAGE:        ll

alias lld='ls -alF --group-directories-first'


#DESCRIPTION:  ls and lsh with directories before files
#USAGE:        (ls | lsh)

alias lad='ls -A --group-directories-first'
alias lshd='ls -A --group-directories-first'


#DESCRIPTION:  l with directories before files
#USAGE:        l

alias lcfd='ls -CF --group-directories-first'


#DESCRIPTION:  lsc with directories before files
#USAGE:        lsc

alias lscd='ls --color=always --group-directories-first'


#DESCRIPTION:  ls with directories before files

alias lsd='ls --color=auto --group-directories-first'

