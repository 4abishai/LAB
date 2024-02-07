#!/bin/bash


echo "$(ps -ef)"
echo -e "\n"

echo "$(ps -ux)"
echo -e "\n"

echo "UID          PID    PPID  C STIME TTY          TIME CMD"
echo $(ps -ef | awk '$2 == 2 {print}')


