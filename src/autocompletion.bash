# DESCRIPTION:  autocompletion for commands

# DESCRIPTION:  reload autocompletion scripts and load new ones
# USAGE:        recomplete

recomplete () {
    if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
    fi
    if [ -f /usr/share/bash-completion/bash_completion ] && ! shopt -oq posix; then
	. /usr/share/bash-completion/bash_completion
    fi
    if [ -d ~/.local/bash_completion.d ] && ! shopt -oq posix; then
	for completionscript in ~/.local/bash_completion.d/*; do
	    if [ -r "$completionscript" ]; then
		. "$completionscript"
	    fi
	done
    fi
    if [ -d ~/.local/share/bash_completion.d ] && ! shopt -oq posix; then
	for completionscript in ~/.local/share/bash_completion.d/*; do
	    if [ -r "$completionscript" ]; then
		. "$completionscript"
	    fi
	done
    fi
}

recomplete

