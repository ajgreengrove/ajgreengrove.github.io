#!/bin/sh

# Fetch the timeline (last 5 commits)
timeline=$(git --no-pager log -n 5 --format="%h | %ad | %s" --date=short)

# Fetch deltas, limited to the first 30 lines of the raw output
deltas=$(git --no-pager log -n 3 --oneline --name-status | head -n 30)

# Construct the payload with trailing newline; Copy to clipboard and notify
printf "\n<timeline-intent>\n%s\n</timeline-intent>\n<structure-deltas>\n%s\n</structure-deltas>\n\n" "$timeline" "$deltas" | wl-copy
echo "Copied git timeline and structure to clipboard."
