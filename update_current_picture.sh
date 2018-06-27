#!/bin/bash
NOW=$(date +"%Y-%m-%d_%H-%M-%S")
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
source $SCRIPTPATH/update_current_picture.conf
wget --user=$username --password=$password -O $storage_path/snap_$NOW.jpg $picture_url
find $storage_path/ -maxdepth 1 -name 'snap*' -type f -mmin +1 -exec rm -rfv {} \;
