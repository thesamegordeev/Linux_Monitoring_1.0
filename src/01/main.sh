#!/bin/bash

if [ $# != 1 ]; then
    echo "Ровно один аргумент!"
elif [[ $1 =~ ^[0-9]+$ ]]; then
   echo "$1 это число!"
else
   echo "$1"
fi
