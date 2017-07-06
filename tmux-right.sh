#!/bin/bash
UP=$(uptime | awk '{print $3}' | sed 's/,//')
HOST=$(hostname -s)
UTC=$(date -u +"%H:%M")
STRING_UP=$(echo "↑ $UP")
STRING_GMT=$(echo "UTC $UTC")
echo '#[fg=colour249, bg=colour237] #('echo $STRING_GMT') #[fg=colour34, bg=colour237] #('echo $STRING_UP') #[fg=colour255 bg=colour34] #('echo $HOST') '
