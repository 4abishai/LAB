#!/bin/bash
echo "1. Home directory  2. Bash version  3. Host name  4. Current directory  5. exit"

ch=0
while [ $ch -ne 5 ]
do
    read -p "Enter your choice: " ch
    case $ch in
        1)
            echo "Home directory: $HOME"
            ;;
        2)
            echo "Bash version: $BASH_VERSION"
            ;;
        3)
            echo "Host name: $HOSTNAME"
            ;;
        4)
            echo "Current directory: $(pwd)"
            ;;
        5)
            echo "Exiting..."
            ;;  
        *)
            echo "Invalid option"
            ;;
    esac
done