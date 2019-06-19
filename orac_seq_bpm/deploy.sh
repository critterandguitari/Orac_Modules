#!/bin/sh

export USER_DIR=${USER_DIR:="/usbdrive"}
# PATCH_DIR=${PATCH_DIR:="/usbdrive/Patches"}
# FW_DIR=${FW_DIR:="/root"}
# SCRIPTS_DIR=$FW_DIR/scripts

# should be run from motherhost package installer

oscsend localhost 4001 /oled/aux/line/2 s "install modules"
oscsend localhost 4001 /oled/aux/line/3 s "installing..."

cp -r ./sequence_bpm ${USER_DIR}/media/orac/usermodules/
cp -r ./presets/* $USER_DIR/data/orac/presets/

oscsend localhost 4001 /oled/aux/line/3 s "done"

cd ..
rm -fr $1

exit 0
