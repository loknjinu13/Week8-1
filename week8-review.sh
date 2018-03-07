#!/bin/sh

#Week2 script
echo "This is week2 script,"
echo "creating a folder and the printing path of that folder."
sleep 1
echo "Creating a folder............. "
echo "Enter a name for the folder please:"
read INPUT_NAME
mkdir "${INPUT_NAME}"
cd ./${INPUT_NAME}
echo "\nPrinting path of folder :\n"
pwd
sleep 0.5
#Week3 script
echo "This is week3 script,"
echo "listing all the connected device and changing directory to one"
sleep 1
cd /dev
ls 
echo "What is the device you wish to change to."
read DEV
cd /dev/${DEV}
pwd
sleep 0.5
#Week4 script
echo "\nThis is week4 script,"
echo "print out detail information about a device."
cd /dev
ls
echo "\nWhat is the device you wish to have information about:\n "
read DEV1
fdisk -l /dev/${DEV1}
sleep0.5
#Week5 script
echo "\nThis is week5 script,"
echo "print the kernal parameters and locate grub and print out all file in grub"
sleep 0.5
cat /proc/cmdline
cd /boot/grub
pwd
ls
sleep 1
#Week6 script
echo "\nThis is week6 script,"
echo "list the unit file of your system and show the status of a unit file"
sleep 0.5
sudo systemctl list-units -l
echo "\nPlease pick out a unit file you wish to check the status of: "
read Unit
systemctl status ${Unit}
sleep 0.5

