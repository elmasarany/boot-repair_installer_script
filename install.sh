#!/bin/bash

# Make sure only root can run our script
if [ "$USER" = 'root' ]
    then
        gdialog --title "User Check" --msgbox "User is root, you can execute the script successfully." 200 150        
        echo "User is root, you can execute the script successfully"
    else
        gdialog --title "User Check" --msgbox "User is not Root. Please run the script as root user." 200 150
        echo "User is not Root. Please run the script as root user. try: sudo $0 "
        exit 1
fi

(dpkg -i python-gi* &&
dpkg -i glade2script* &&
dpkg -i boot-sav_* &&
dpkg -i boot-sav-* &&
dpkg -i clean-ubiquity_*
dpkg -i boot-repair_*
dpkg -i boot-info_*
dpkg -i os-uninstaller_*) &&
boot-repair
