#!/bin/bash

# Script for mounting and unmounting external
# drives without having to type whole command by hand


if [ $1 == "-m" ]; then
    sudo mkdir /media/$3
    sudo mount /dev/sd$2 /media/$3
    echo ls /media/$3
elif [ $1 == "-u" ]; then
    sudo umount /media/$3
    echo "unmounting complete"
elif [ $1 == "-h" ]; then
    printf "\nSyntax: ./mounting.sh [option] [partition] [folder name]
Options:
-m              mount partition
-u              unmount partition
-h, --help      display this help text

Example:
./mounting.sh -m c1 pendrive

Mount /dev/sdc1 to /media/pendrive
"
fi
