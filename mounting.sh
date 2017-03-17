#!/bin/bash

# Script for mounting and unmounting external
# drives without having to type whole command by hand


if [ $1 == "-m" ]; then
    sudo mkdir /media/$3
    sudo mount /dev/$2 /media/$3
    echo ls /media
elif [ $1 == "-u" ]; then
    sudo umount /media/$3
    echo "unmounting complete"
elif [ $1 == "-l" ]; then
    sudo fdisk -l
elif [ $1 == "-h" ]; then
    printf "\nSyntax: ./mounting.sh [option] [partition] [folder name]
Options:
-l		list all disks and partitions using fdisk
-m              mount partition
-u              unmount partition
-h      	display this help text

Example mounting [-m]:
./mounting.sh -m sdc1 pendrive

Example umounting [-u]:
./mounting.sh -u 0 pendrive
there always must be 3 arguments, 0 is used as empty secound argument
"
fi
