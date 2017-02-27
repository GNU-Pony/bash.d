#DESCRIPTION: Utilise KMS support in ponysay when in a TTY

if [ "$TERM" = "linux" ] && [ -x /usr/bin/ponysay ]; then
    ponysay () {
	PONYSAY_KMS_PALETTE="$PALETTE" /usr/bin/ponysay "$@"
	echo -en "$PALETTE"
    }
fi

