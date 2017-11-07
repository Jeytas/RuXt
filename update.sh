#!/bin/bash

if [ ! -e ~/.ruxt ]; then echo "It seems like you are trying to update your RuXt installation without actually having it installed, since the ~/.ruxt folder could not be found. Please ensure that you have correctly installed RuXt using the installer or create an issue on this project's official Github repository."; else echo "RuXt installation has been found, proceeding with update"; fi

echo "Removing old directory"
rm -rf ~/.ruxt
if [ $? = 0 ]; then echo "Removing successful. Now cloning repository"; else echo "Removing unsuccessful, update aborted" && exit; fi

git clone https://github.com/Jeytas/RuXt.git ~/.ruxt
if [ $? = 0 ]; then echo "Cloning successful, program has been updated"; else echo "Cloning unsucessful, update aborted" && exit; fi
