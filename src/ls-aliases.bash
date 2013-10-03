#DESCRIPTION:  ls with long listing, classification with appendix character, hidden files and the . and .. directories
#USAGE:        ll

alias ll='ls -alF'


#DESCRIPTION:  ls with hidden files
#USAGE:        (ls | lsh)

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

