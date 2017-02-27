# DESCRIPTION:  Palettes for the terminal

# DESCRIPTION:  Restore to the last selected palette
# USAGE:        palette-reset

# DESCRIPTION:  Store the last selected palette has that on set by <command>
# USAGE:        palette-set <command>

# DESCRIPTION:  The last choosen palette
# VARIABLE:     $PALETTE

# Commands for setting the palette:
#    linuxColours      The standard Linux VT palette 
#    tangoColours      The Tango palette
#    tangoidColours    The Tango palette, but with black background
#    cobaltColours     The Cobalt palette
#    yellowColours     A palette with yellow background
#    redColours        A palette with red background
#    ncsColours        A palette based on NCS S 2050 with blue background
#    lightNcsColours   A palette based on NCS S 2050 with lighter blue background
#    blackNcsColours   A palette based on NCS S 2050 with black background


__linux_c='\e]4;0;rgb:00/00/00\e\\\e]4;1;rgb:AA/00/00\e\\\e]4;2;rgb:00/AA/00\e\\\e]4;3;rgb:AA/55/00\e\\\e]4;4;rgb:00/00/AA\e\\\e]4;5;rgb:AA/00/AA\e\\\e]4;6;rgb:00/AA/AA\e\\\e]4;7;rgb:AA/AA/AA\e\\\e]4;8;rgb:55/55/55\e\\\e]4;9;rgb:FF/55/55\e\\\e]4;10;rgb:55/FF/55\e\\\e]4;11;rgb:FF/FF/55\e\\\e]4;12;rgb:55/55/FF\e\\\e]4;13;rgb:FF/55/FF\e\\\e]4;14;rgb:55/FF/FF\e\\\e]4;15;rgb:FF/FF/FF\e\\'

__tango_c='\e]4;0;rgb:2E/34/36\e\\\e]4;1;rgb:CC/00/00\e\\\e]4;2;rgb:4E/9A/06\e\\\e]4;3;rgb:C4/A0/00\e\\\e]4;4;rgb:34/65/A4\e\\\e]4;5;rgb:75/50/7B\e\\\e]4;6;rgb:06/98/9A\e\\\e]4;7;rgb:D3/D7/CF\e\\\e]4;8;rgb:58/58/58\e\\\e]4;9;rgb:FF/55/55\e\\\e]4;10;rgb:55/FF/55\e\\\e]4;11;rgb:FF/FF/55\e\\\e]4;12;rgb:55/55/FF\e\\\e]4;13;rgb:FF/55/FF\e\\\e]4;14;rgb:55/FF/FF\e\\\e]4;15;rgb:FF/FF/FF\e\\'

__tangoid_c='\e]4;0;rgb:00/00/00\e\\\e]4;1;rgb:CC/00/00\e\\\e]4;2;rgb:4E/9A/06\e\\\e]4;3;rgb:C4/A0/00\e\\\e]4;4;rgb:34/65/A4\e\\\e]4;5;rgb:75/50/7B\e\\\e]4;6;rgb:06/98/9A\e\\\e]4;7;rgb:D3/D7/CF\e\\\e]4;8;rgb:58/58/58\e\\\e]4;9;rgb:FF/55/55\e\\\e]4;10;rgb:55/FF/55\e\\\e]4;11;rgb:FF/FF/55\e\\\e]4;12;rgb:55/55/FF\e\\\e]4;13;rgb:FF/25/5FF\e\\\e]4;14;rgb:55/FF/FF\e\\\e]4;15;rgb:FF/FF/FF\e\\'

__cobalt_c='\e]4;0;rgb:02/08/40\e\\\e]4;1;rgb:CC/00/00\e\\\e]4;2;rgb:4E/9A/06\e\\\e]4;3;rgb:C4/A0/00\e\\\e]4;4;rgb:34/657A4\e\\\e]4;5;rgb:75/50/7B\e\\\e]4;6;rgb:06/98/9A\e\\\e]4;7;rgb:D3/D7/CF\e\\\e]4;8;rgb:58/58/58\e\\\e]4;9;rgb:FF/55/55\e\\\e]4;10;rgb:55/FF/55\e\\\e]4;11;rgb:FF/FF/55\e\\\e]4;12;rgb:55/55/FF\e\\\e]4;13;rgb:FF/55/FF\e\\\e]4;14;rgb:55/FF/FF\e\\\e]4;15;rgb:FF/FF/FF\e\\'

__yellow_c='\e]4;0;rgb:30/30/08\e\\\e]4;1;rgb:CC/00/00\e\\\e]4;2;rgb:4E/9A/06\e\\\e]4;3;rgb:C4/A0/00\e\\\e]4;4;rgb:34/65/A4\e\\\e]4;5;rgb:75/50/7B\e\\\e]4;6;rgb:06/98/9A\e\\\e]4;7;rgb:D3/D7/CF\e\\\e]4;8;rgb:58/58/58\e\\\e]4;9;rgb:FF/55/55\e\\\e]4;10;rgb:55/FF/55\e\\\e]4;11;rgb:FF/FF/55\e\\\e]4;12;rgb:55/55/FF\e\\\e]4;13;rgb:FF/55/FF\e\\\e]4;14;rgb:55/FF/FF\e\\\e]4;15;rgb:FF/FF/FF\e\\'

__red_c='\e]4;0;rgb:30/00/00\e\\\e]4;1;rgb:CD/65/6C\e\\\e]4;2;rgb:32/A6/79\e\\\e]4;3;rgb:CC/AD/47\e\\\e]4;4;rgb:24/95/BE\e\\\e]4;5;rgb:A4/6E/B0\e\\\e]4;6;rgb:00/A0/9F\e\\\e]4;7;rgb:D3/D7/CF\e\\\e]4;8;rgb:55/57/53\e\\\e]4;9;rgb:EB/5E/6A\e\\\e]4;10;rgb:0E/C2/87\e\\\e]4;11;rgb:F2/CA/38\e\\\e]4;12;rgb:00/AC/E0\e\\\e]4;13;rgb:C4/73/D1\e\\\e]4;14;rgb:00/C3/C7\e\\\e]4;15;rgb:EE/EE/EE\e\\'

__ncs_c='\e]4;0;rgb:02/08/40\e\\\e]4;1;rgb:CD/65/6C\e\\\e]4;2;rgb:32/A6/79\e\\\e]4;3;rgb:CC/AD/47\e\\\e]4;4;rgb:24/95/BE\e\\\e]4;5;rgb:A4/6E/B0\e\\\e]4;6;rgb:00/A0/9F\e\\\e]4;7;rgb:D3/D7/CF\e\\\e]4;8;rgb:55/57/53\e\\\e]4;9;rgb:EB/5E/6A\e\\\e]4;10;rgb:0E/C2/87\e\\\e]4;11;rgb:F2/CA/38\e\\\e]4;12;rgb:00/AC/E0\e\\\e]4;13;rgb:C4/73/D1\e\\\e]4;14;rgb:00/C3/C7\e\\\e]4;15;rgb:EE/EE/EE\e\\'

__light_ncs_c='\e]4;0;rgb:0C/14/58\e\\\e]4;1;rgb:CD/65/6C\e\\\e]4;2;rgb:32/A6/79\e\\\e]4;3;rgb:CC/AD/47\e\\\e]4;4;rgb:24/95/BE\e\\\e]4;5;rgb:A4/6E/B0\e\\\e]4;6;rgb:00/A0/9F\e\\\e]4;7;rgb:D3/D7/CF\e\\\e]4;8;rgb:55/57/53\e\\\e]4;9;rgb:EB/5E/6A\e\\\e]4;10;rgb:0E/C2/87\e\\\e]4;11;rgb:F2/CA/38\e\\\e]4;12;rgb:00/AC/E0\e\\\e]4;13;rgb:C4/73/D1\e\\\e]4;14;rgb:00/C3/C7\e\\\e]4;15;rgb:EE/EE/EE\e\\'

__black_ncs_c='\e]4;0;rgb:00/00/00\e\\\e]4;1;rgb:CD/65/6C\e\\\e]4;2;rgb:32/A6/79\e\\\e]4;3;rgb:CC/AD/47\e\\\e]4;4;rgb:24/95/BE\e\\\e]4;5;rgb:A4/6E/B0\e\\\e]4;6;rgb:00/A0/9F\e\\\e]4;7;rgb:D3/D7/CF\e\\\e]4;8;rgb:55/57/53\e\\\e]4;9;rgb:EB/5E/6A\e\\\e]4;10;rgb:0E/C2/87\e\\\e]4;11;rgb:F2/CA/38\e\\\e]4;12;rgb:00/AC/E0\e\\\e]4;13;rgb:C4/73/D1\e\\\e]4;14;rgb:00/C3/C7\e\\\e]4;15;rgb:EE/EE/EE\e\\'


if [ "$TERM" = "linux" ]; then
    __c () {
	sed -e 's:;10;:A:g' -e 's:;11;:B:g' -e 's:;12;:C:g' -e 's:;13;:D:g' -e 's:;14;:E:g' -e 's:;15;:F:g' |
        sed -e 's:]4:]P:g' -e 's:;::g' -e 's:rgb::g' -e 's:/::g' -e 's/://g' -e 's:\\e\\\\::g'
    }
    __linux_c="$(__c <<<"${__linux_c}")"
    __tango_c="$(__c <<<"${__tango_c}")"
    __tangoid_c="$(__c <<<"${__tangoid_c}")"
    __cobalt_c="$(__c <<<"${__cobalt_c}")"
    __yellow_c="$(__c <<<"${__yellow_c}")"
    __red_c="$(__c <<<"${__red_c}")"
    __ncs_c="$(__c <<<"${__ncs_c}")"
    __light_ncs_c="$(__c <<<"${__light_ncs_c}")"
    __black_ncs_c="$(__c <<<"${__black_ncs_c}")"
fi

alias    linuxColours='echo -en "${__linux_c}"'
alias    tangoColours='echo -en "${__tango_c}"'
alias  tangoidColours='echo -en "${__tangoid_c}"'
alias   cobaltColours='echo -en "${__cobalt_c}"'
alias   yellowColours='echo -en "${__yellow_c}"'
alias      redColours='echo -en "${__red_c}"'
alias      ncsColours='echo -en "${__ncs_c}"'
alias lightNcsColours='echo -en "${__light_ncs_c}"'
alias blackNcsColours='echo -en "${__black_ncs_c}"'

if [ "$USER" = 'root' ]; then
    alias stdColours=redColours
else
    alias stdColours=blackNcsColours
fi

if [ "$COLORTERM" = '' ]; then
    stdColours
fi

PALETTE=

palette-set () {
    PALETTE="$*"
}

palette-reset () {
    echo -n "$PALETTE"
}

palette-set `stdColours`

