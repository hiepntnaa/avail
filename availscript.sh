#!/bin/bash

# Official script command of Avail script from daningyn
COMMAND="curl -sL1 avail.sh | bash"

# Restart script if it encounters errors
while true; do
    echo "Starting command: $COMMAND"
    bash -c "$COMMAND" &

    PID=$!

    wait $PID
    EXIT_STATUS=$?

    if [ $EXIT_STATUS -eq 0 ]; then
        echo "Command exited successfully. Restarting..."
    else
        echo "Command failed with status $EXIT_STATUS. Restarting..."
    fi
    
    sleep 10
done
