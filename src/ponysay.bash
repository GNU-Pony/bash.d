#DESCRIPTION: Utilise KMS support in ponysay when in a TTY

if [ "$TERM" = "linux" ]; then
    function ponysay
    {
	PONYSAY_KMS_PALETTE="$PALETTE" /usr/bin/ponysay "$@"
	echo -en "$PALETTE"
    }
fi

