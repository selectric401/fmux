#!/bin/bash
UP=$(uptime | awk '{print $3}' | sed 's/,//')
HOST=$(hostname -s)
UTC=$(date -u +"%H:%M")
STRING_UP=$(echo "$UP")
STRING_GMT=$(echo "UTC $UTC")
printf "$STRING_GMT #[fg=green] $STRING_UP #[fg=black bg=green] $HOST "
