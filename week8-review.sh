#!/bin/sh

#week2
echo "creating a folder and the printing path of that folder program: "
sleep 1
echo "Creating a folder............. "
echo "Enter a name for the folder please:"
read INPUT_NAME
mkdir "${INPUT_NAME}"
cd ./${INPUT_NAME}
echo "\nPrinting path of folder :\n"
sleep 1.5
pwd
sleep 1

#Week3
echo "\nlisting all the connected device and changing directory to one program: "
sleep 1
cd /dev
ls 
echo "What is the device you wish to change to."
read DEV
cd /dev/${DEV}
echo "Printing current directory"
sleep 1
pwd
sleep 1

#Week4
echo "\nPrint out detail information about a device program: "
sleep 1
cd /dev
ls
echo "\nWhat is the device you wish to have information about:\n "
read DEV1
sudo fdisk -l /dev/${DEV1}

#Week5
echo "\nprint the kernal parameters and locate grub and print out all file in grub"
sleep 1
cat /proc/cmdline
sleep 1
cd /boot/grub
pwd
ls
sleep 1

#Week6
echo "\nlist the unit file of your system and show the status of a unit file program:"
sleep 1
sudo systemctl list-units -l
echo "\nPlease pick out a unit file you wish to check the status of: "
read Unit
systemctl status ${Unit}


