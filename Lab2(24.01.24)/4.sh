#!/bin/bash


echo "$(ps -ef)"
echo -e "\n"

echo "$(ps -ux)"
echo -e "\n"

# echo "USER       PID  %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND"
# echo "USER       PID  PPID  %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND"
# ps -ef | awk '$2 == 2 {print}'

