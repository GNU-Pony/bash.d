#DESCRIPTION:  A nicer default shell prompt line


#DESCRIPTION:  Use full block cursor     Do not use full block cursor
#USAGE         block-on                  block-off

#DESCRIPTION:  Print username            Do not print username            Set colour of username
#USAGE:        username-on               username-off                     username-colour <ansi-colour>

#DESCRIPTION:  Print hostname            Do not print hostname            Set colour of hostname
#USAGE:        hostname-on               hostname-off                     hostname-colour <ansi-colour>

#DESCRIPTION:  Print terminal name       Do not print terminal name       Set colour of terminal name
#USAGE:        pts-on                    pts-off                          pts-colour <ansi-colour>

#DESCRIPTION:  Print git branch          Do not print git branch          Set colour of git branch
#USAGE:        git-on                    git-off                          git-colour <ansi-colour>

#DESCRIPTION:  Print directory           Do not print directory           Set colour of directory
#USAGE:        dir-on                    dir-off                          dir-colour <ansi-colour>

#DESCRIPTION:  Print directory tip       Print absolute directory         Print custom directory
#USAGE:        dir-short                 dir-full                         dir-text <text>

#DESCRIPTION:  Print current time        Do not print current time        Set colour of current time
#USAGE:        clock-on                  clock-off                        clock-colour <ansi-colour>

#DESCRIPTION:  Print battery status      Do not print battery status      Set colour of battery status
#USAGE:        battery-on                battery-off                      battery-colour <ansi-colour>

#DESCRIPTION:  Set title on terminal     Do not set title on terminal
#USAGE         title-on                  title-off

#DESCRIPTION:  Use two lines             Use a single line
#USAGE         dual-on                   dual-off

#DESCRIPTION:  Set colour of error code
#USAGE         error-colour <ansi-colour>

#DESCRIPTION:  Set colour of dollar/hash sign
#USAGE         dollar-colour <ansi-colour>


prompt_addons=()


__prompt_block=""
if [ "$TERM" = "linux" ]; then
    __prompt_block="\033[?8c"
fi
function block-on
{
    __prompt_block="\033[?8c"
    update-prompt
}
function block-off
{
    __prompt_block=""
    update-prompt
}


__prompt_username="\u"
function username-on
{
    __prompt_username="\u"
    update-prompt
}
function username-off
{
    __prompt_username=""
    update-prompt
}


__prompt_username_colour="94"
if [ "$USER" = "root" ]; then
    __prompt_username_colour="91"
    if [ "$TERM" = "linux" ]; then
        __prompt_username_colour="31;01"
    fi
elif [ "$TERM" = "linux" ]; then
    __prompt_username_colour="34;01"
fi
function username-colour
{
    __prompt_username_colour="$*"
    update-prompt
}


__prompt_hostname="1"
function hostname-on
{
    __prompt_hostname="1"
    update-prompt
}
function hostname-off
{
    __prompt_hostname="0"
    update-prompt
}


__prompt_hostname_colour="34"
function hostname-colour
{
    __prompt_hostname_colour="$*"
    update-prompt
}


__prompt_pts="0"
if [ "$TERM" = "linux" ]; then
    __prompt_pts="1"
fi
function pts-on
{
    __prompt_pts="1"
    update-prompt
}
function pts-off
{
    __prompt_pts="0"
    update-prompt
}


__prompt_pts_colour="36"
function pts-colour
{
    __prompt_pts_colour="$*"
    update-prompt
}


__prompt_git="1"
function git-on
{
    __prompt_git="1"
    update-prompt
}
function git-off
{
    __prompt_git="0"
    update-prompt
}


__prompt_git_colour="32"
function git-colour
{
    __prompt_git_colour="$*"
    update-prompt
}


__prompt_dir="\w"
function dir-on
{
    __prompt_dir="\w"
    update-prompt
}
function dir-short
{
    __prompt_dir="\W"
    update-prompt
}
function dir-full
{
    __prompt_dir='$(pwd)'
    update-prompt
}
function dir-text
{
    __prompt_dir="$(sed -e 's:\\:\\\\:g' <<<"$*")"
    update-prompt
}
function dir-off
{
    __prompt_dir=""
    update-prompt
}


__prompt_dir_colour="35"
function dir-colour
{
    __prompt_dir_colour="$*"
    update-prompt
}


__prompt_clock="(\t)"
function clock-on
{
    __prompt_clock="(\t)"
    update-prompt
}
function clock-off
{
    __prompt_clock=""
    update-prompt
}


__prompt_clock_colour="33"
function clock-colour
{
    __prompt_clock_colour="$*"
    update-prompt
}


__prompt_dual="\[\033[00m\]\n\[\033[1K\]"
function dual-on
{
    __prompt_dual="\[\033[00m\]\n\[\033[1K\]"
    update-prompt
}
function dual-off
{
    __prompt_dual=""
    update-prompt
}


__prompt_dollar_colour="01;34"
if [ "$USER" = "root" ]; then
    __prompt_dollar_colour="01;31"
fi
function dollar-colour
{
    __prompt_dollar_colour="$*"
    update-prompt
}


__prompt_error_colour="01;31"
function error-colour
{
    __prompt_error_colour="$*"
    update-prompt
}


function __error
{
    if [ "$1" = "0" ]; then
        echo -n ""
    else
        echo -n "(error: $1) "
    fi
}


__prompt_bettery=""
function battery-on
{
    __prompt_battery='$(__battery)'
    update-prompt
}
function battery-off
{
    __prompt_battery=""
    update-prompt
}


__prompt_battery_colour="33"
function battery-colour
{
    __prompt_battery_colour="$*"
    update-prompt
}


function __battery
{
    local __first=1
    acpi --battery 2>/dev/null | while read info; do
        if [ $__first = 1 ]; then
            echo -n "(${info})"
            __first=0
        else
            echo -n " (${info})"
        fi
    done
}


__prompt_title=""
case "$TERM" in
    xterm*|rxvt*)
	__prompt_title="\033]0;\u@\h: \w  ||  $(tty)\a"
	;;
esac
function title-on
{
    __prompt_title="\033]0;\u@\h: \w  ||  $(tty)\a"
    update-prompt
}
function title-off
{
    __prompt_title=""
    update-prompt
}


function update-prompt
{
    local __invisible __addon
    __invisible="\[${__prompt_title}${__prompt_block}\033[00m\]"
    PS1=""
    if [ ! "${__prompt_username}" = "" ]; then
        PS1="${PS1}\[\033[${__prompt_username_colour}m\]${__prompt_username}\[\033[00m\]"
    fi
    if [ "${__prompt_hostname}" = "1" ]; then
        if [ ! "${PS1}" = "" ]; then
            PS1="${PS1}@"
        fi
        PS1="${PS1}\[\033[${__prompt_hostname_colour}m\]\h\[\033[00m\]"
    fi
    if [ "${__prompt_pts}" = "1" ]; then
        if [ ! "${PS1}" = "" ]; then
            PS1="${PS1}."
        fi
        PS1="${PS1}\[\033[${__prompt_pts_colour}m\]\l\[\033[00m\]"
    fi
    if [ "${__prompt_git}" = "1" ]; then
        if [ ! "${PS1}" = "" ]; then
            PS1="${PS1}"'$(git status -b -s 2>/dev/null >&2 && echo -n : || echo -n "")'
        fi
        __git='$((git status -b -s 2>/dev/null | cut -d \  -f 2 | head -n 1) || echo -n "")'
        __git="\[\033[${__prompt_git_colour}m\]${__git}\[\033[00m\]"
        PS1="${PS1}${__git}"
    fi
    if [ ! "${__prompt_dir}" = "" ]; then
        if [ ! "${PS1}" = "" ]; then
            PS1="${PS1}: "
        fi
        PS1="${PS1}\[\033[${__prompt_dir_colour}m\]${__prompt_dir}\[\033[00m\]"
    fi
    if [ ! "${__prompt_clock}" = "" ]; then
        if [ ! "${PS1}" = "" ]; then
            PS1="${PS1} "
        fi
        PS1="${PS1}\[\033[${__prompt_clock_colour}m\]${__prompt_clock}\[\033[00m\]"
    fi
    if [ ! "${__prompt_battery}" = "" ]; then
        if [ ! "${PS1}" = "" ]; then
            PS1="${PS1} "
        fi
        PS1="${PS1}\[\033[${__prompt_battery_colour}m\]${__prompt_battery}\[\033[00m\]"
    fi
    __sh="\[\033[00m\033[${__prompt_dollar_colour}m\]\\$\[\033[00m\]"
    __err="\[\033[${__prompt_error_colour}m\]"'$(__error $?)'"\[\033[00m\]"
    for __addon in "${prompt_addons[@]}"; do
	PS1="${PS1}$(${__addon})"
    done
    PS1="${__invisible}${__err}${PS1}${__prompt_dual}${__sh} "
}


update-prompt

