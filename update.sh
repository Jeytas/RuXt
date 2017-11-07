#!/bin/bash
echo "Removing old directory"
rm -r ~/.ruxt
if [ $? = 0 ]; then echo "Removing successful. Now cloning repository"; else echo "Removing unsuccessful, update aborted" && exit; fi

git clone https://github.com/Jeytas/RuXt.git ~/.ruxt
if [ $? = 0 ]; then echo "Cloning successful, program has been updated"; else echo "Cloning unsucessful, update aborted" && exit; fi
