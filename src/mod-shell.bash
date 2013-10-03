#DESCRIPTION:  Reload the shell configurations
#USAGE:        resh

#DESCRIPTION:  Edit the shell configurations
#USAGE:        edsh

function resh
{
    source ~/.bashrc
}

function edsh
{
    if [ -z "$EDITOR" ]; then
	echo 'No default editor is set, please configure the environment variable EDITOR'
    else
	$EDITOR ~/.bashrc
    fi
}

