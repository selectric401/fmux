#!/bin/bash
UP=$(uptime | awk '{print $3}' | sed 's/,//')
HOST=$(hostname -s)
UTC=$(date -u +"%H:%M")
UPSTRING=$(echo "↑ $UP")
GMTSTRING=$(echo "UTC $UTC")
echo '#[fg=colour249, bg=colour237] #('echo $GMTSTRING') #[fg=colour34, bg=colour237] #('echo $UPSTRING') #[fg=colour255 bg=colour34] #('echo $HOST') '
