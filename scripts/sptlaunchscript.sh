#!/bin/bash

# Function to check if Spotifyd is running
is_spotifyd_running() {
    if pgrep -x "spotifyd" >/dev/null; then
        return 0  # Spotifyd is running
    else
        return 1  # Spotifyd is not running
    fi
}

# Check if Spotifyd is already running
if is_spotifyd_running; then
    echo "Spotifyd is already running."
else
    echo "Spotifyd is not running. Starting Spotifyd..."
    # Start Spotifyd here
    spotifyd &
    sleep 2  # Wait for Spotifyd to start (adjust time if needed)
fi

# Now, Spotifyd is definitely running, so run Spt
echo "Running Spt..."
# Replace the command with the actual command to run spt
spt
