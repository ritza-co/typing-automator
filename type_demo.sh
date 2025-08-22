#!/bin/bash

# Usage: ./type_demo.sh "text to type" [delay_in_seconds]
# Uses AppleScript file for faster character-by-character typing

TEXT="${1:-this is some string to type}"
DELAY="${2:-10}"

# Run the AppleScript with arguments
osascript "$(dirname "$0")/type_demo.scpt" "$TEXT" "$DELAY"
