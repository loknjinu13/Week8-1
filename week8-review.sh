#!/bin/sh

#week2
echo "creating a folder and the printing path of that folder program: "
sleep 2
echo "Creating a folder............. "
echo "Enter a name for the folder please:"
read INPUT_NAME
mkdir "${INPUT_NAME}"
cd ./${INPUT_NAME}
echo "\nPrinting path of folder :\n"
pwd
sleep 1

#Week3
echo "listing all the connected device and changing directory to one program: "
sleep 2
cd /dev
ls 
echo "What is the device you wish to change to."
read DEV
cd /dev/${DEV}
pwd
sleep 1

#Week4
echo "Print out detail information about a device program: "
sleep 2
cd /dev
ls
echo "\nWhat is the device you wish to have information about:\n "
read DEV1
fdisk -l /dev/${DEV1}
sleep 1

#Week5
echo "print the kernal parameters and locate grub and print out all file in grub"
sleep 2
cat /proc/cmdline
cd /boot/grub
pwd
ls
sleep 1

#Week7
echo "list the unit file of your system and show the status of a unit file program:"
sleep 2
sudo systemctl list-units -l
echo "\nPlease pick out a unit file you wish to check the status of: "
read Unit
systemctl status ${Unit}
sleep 1

