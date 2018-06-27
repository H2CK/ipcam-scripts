# ipcam-scripts
Scripts for managing the pictures from a IP camera.

Following the functionality of the scripts is described:
## update_current_picture.sh
This script should be triggered by a cron job (e.g. every minute) and will fetch the current picture (jpg) via an authenticated http request and store it in a given folder. The filename will be set to snap_<date in format %Y-%m-%d_%H-%M-%S>.jpg.
Additionally files older than 1 minute with the filename starting with snap* will be deleted from the folder.
The configuration of the script has to be done in a configuration file. The configuration file with the name update_current_picture.conf has to be stored in the same folder where the script is located.
Example configuration file:
  #Configuration file for update_current_picture.sh
  username="guest"
  password="password"
  storage_path="/var/ipcam_pic/"
  picture_url="http://ipcam/tmpfs/snap.jpg"

## delete_old_pictures.sh
This scripts' purpose is to delete files and folder that are older than 5 days in a given folder. This is used to delete older images from an ip camera stored at a specific location to same space. Currently only folders and their content starting with 20* will be deleted.
The configuration of the script has to be done in a configuration file. The configuration file with the name delete_old_pictures.conf has to be stored in the same folder where the script is located.
Example configuration file:
  #Configuration file for delete_old_pictures.sh
  storage_path="/var/ipcam_pic/"
