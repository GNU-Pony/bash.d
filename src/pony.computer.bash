#DESCRIPTION: Utilise KMS support in ponysay when in a TTY and running pony.computer

if [ "$TERM" = "linux" ] && [ -x /usr/bin/pony.computer ]; then
    pony.computer () {
	PONYSAY_KMS_PALETTE="$PALETTE" /usr/bin/pony.computer "$@"
	echo -en "$PALETTE"
    }
fi

