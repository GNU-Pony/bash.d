# DESCRIPTION:  Run a command in a infinite loop with a sleep between executions
# USAGE:        forever "<arguments for sleep>" <command>

forever () {
    time="$1"
    shift 1
    while true; do
	"$@"
	sleep $time
    done
}

