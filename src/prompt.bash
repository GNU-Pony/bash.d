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
    __prompt_dir=" \w"
    update-prompt
}
function dir-short
{
    __prompt_dir=" \W"
    update-prompt
}
function dir-text
{
    __prompt_dir=" $(sed -e 's:\\:\\\\:g' <<<"$*")"
    update-prompt
}
function git-off
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


__prompt_clock=" (\t)"
function clock-on
{
    __prompt_clock=" (\t)"
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


__error="0"
function __get_err
{
    __error="$?"
}

function __error
{
    if [ "$__error" = "0" ]; then
        echo -n ''
    else
        echo -n "\[\033[{__prompt_error_colour}m\] (error: ${error})\[\033[00m\]"
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
    echo -n "\[\033[${__prompt_battery_colour}m\]"
    acpi --battery | while read info; do
        echo -n " (${info})"
    done
    echo -n "\[\033[00m\]"
}


__prompt_title=""

case "$TERM" in
    xterm*|rxvt*)
	PS1="\[\e]0;\u@\h: \w  ||  $(tty)\a\]"
	;;
esac
function title-on
{
    __prompt_title="\[\e]0;\u@\h: \w  ||  $(tty)\a\]"
    update-prompt
}
function title-off
{
    __prompt_title=""
    update-prompt
}


function update-prompt
{
    __host=""
    __pts=""
    __git=""
    __user="\033[${__prompt_username_colour}m\]${__prompt_username}\[\033[00m\]"
    __dir="\[\033[${__prompt_dir_colour}m\]${__prompt_dir}\[\033[00m\]"
    __clock="\[\033[${__prompt_clock_colour}m\]${__prompt_clock}\[\033[00m\]"
    __sh="\[\033[00m\033[${__prompt_dollar_colour}m\]\\$\[\033[00m\]"
    if [ "${__prompt_hostname}" = "1" ]; then
        __host="@\[\033[${__prompt_hostname_colour}m\]\h\[\033[00m\]"
    fi
    if [ "${__prompt_pts}" = "1" ]; then
        __pts=".\[\033[${__prompt_pts_colour}m\]\l\[\033[00m\]"
    fi
    if [ "${__prompt_git}" = "1" ] && git status -b -s 2>/dev/null >&2; then
        __git='$(git status -b -s 2>/dev/null | cut -d \  -f 2)'
        __git=":\[\033[${__prompt_git_colour}m\]${__git}\[\033[00m\]"
    fi
    PS1='$(__get_err)'"${__prompt_title}\[${__prompt_block}\033[00m${__user}${__host}${__pts}${__git}:${__dir}${__clock}${__prompt_battery}"'$(__error)'"${__prompt_dual}${__sh} "
}


update-prompt

