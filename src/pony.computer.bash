#DESCRIPTION: Utilise KMS support in ponysay when in a TTY and running pony.computer

if [ "$TERM" = "linux" ]; then
    function pony.computer
    {
	PONYSAY_KMS_PALETTE="$PALETTE" /usr/bin/pony.computer "$@"
	echo -en "$PALETTE"
    }
fi

