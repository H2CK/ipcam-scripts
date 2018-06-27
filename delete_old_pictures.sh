#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
source $SCRIPTPATH/delete_old_pictures.conf
find $storage_path -maxdepth 1 -name '20*' -type d -mtime +5 -exec rm -rfv {} \;
