#!/bin/bash

# Make sure only root can run our script
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   echo "Try running: sudo $0" 1>&2
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
