#!/bin/bash

# set user home to sdcard or usbdrive, defaulting to usbdrive
export USER_DIR=${USER_DIR:="/sdcard"}

# message for screen
oscsend localhost 4001 /oled/aux/line/2 s "install modules"
oscsend localhost 4001 /oled/aux/line/3 s "installing..."

# create folder for this module
mkdir -p ${USER_DIR}/media/orac/usermodules/sequence/pinkMode

# copy files to the folder
cp -r ./* ${USER_DIR}/media/orac/usermodules/sequence/pinkMode

oscsend localhost 4001 /oled/aux/line/3 s "done"

# remove the files from patches folder
cd ..
rm -fr $1

exit 0
