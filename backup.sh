#!/bin/bash

# current date
dt=$(date +%Y-%b-%d)
# master drive
master=Yellowstone
# destination drive
#drive=Firehole
drive=Lamar
	
rsync -av "/Volumes/$master HD/Backup/Pictures/JIM" "/Volumes/$drive HD/Backup/Pictures"
rsync -av "/Volumes/$master HD/Backup/Pictures/Photos Library.photoslibrary" "/Volumes/$drive HD/Backup/Pictures"
rsync -av "/Volumes/$master HD/Backup/Pictures/DesktopPics" "/Volumes/$drive HD/Backup/Pictures"

rsync -av "/Users/jcunning/Music/iTunes" "/Volumes/$drive HD/Backup/Music"

rsync -av --delete "/Volumes/$master HD/Backup/workCodeBase/" "/Volumes/$drive HD/Backup/workCodeBase"

mkdir -p "/Volumes/$drive HD/Backup/Documents/$dt"
rsync -av "/Volumes/$master HD/Backup/Documents/" "/Volumes/$drive HD/Backup/Documents/$dt"
