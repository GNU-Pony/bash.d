# DESCRIPTION:  safeguards to prevent security exploitations

# Prevents a program or shell function from pretending to be sudo
sudo () {
    /usr/bin/sudo --prompt $'\e[01;32m[sudo] password for '"$USER"$': \033[00m' "$@"
}

