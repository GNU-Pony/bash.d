# DESCRIPTION:  safeguards to prevent security exploitations

# Prevents a program or shell function from pretending to be sudo
function sudo
{
    "$(which sudo)" --prompt $'\e[01;32m[sudo] password for '"$USER"$': \033[00m' "$@"
}

