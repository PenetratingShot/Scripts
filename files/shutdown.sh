#!/bin/bash

# COLOR ENVS
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT_GRAY='\033[0;37m'
DARK_GRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'
NC='\033[0m'

printf "\nShutdown\n"
printf "Detecting Operating System...\n"
if [[ "$OSTYPE" == "linux-gnu" ]]
then
    echo "You're runnning Linux-GNU."
elif [[ "$OSTYPE" == "darwin"* ]]
then
    echo "Type in the time (min) you like the shutdown delay to be (if no delay, press [ENTER]), followed by [ENTER]:"
    read delay
    if [ -z "$1" ]
    then
        echo "No time supplied, assuming immediate."
	echo "Shutting down..."
	shutdown -h now
    else
	echo "Shutting down in ${delay} minutes."
	shutdown -h +${delay}i	
    fi
elif [[ "$OSTYPE" == "cygwin" ]]
then
    echo "You're running a POSIX layer, emulated Linux on Windows."
elif [[ "$OSTYPE" == "msys" ]]
then
  echo "You're running Windows."
elif [[ "$OSTYPE" == "freebsd"* ]]
then
    echo "You're running Berkely Unix"
fi
