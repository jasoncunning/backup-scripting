#!/bin/bash

# current date
dt=$(date +%Y-%b-%d)
#drive=Firehole
drive=Lamar
	
if [ $# -ge 1 ] && [ -n "$1" ]; then

	if [ "Pictures" = "$1" ]; then
		echo "backing up Pictures..."
		mkdir "/Volumes/$drive HD/Backup/Pictures"
		rsync -av '/Users/jasoncunning/Pictures/JIM' "/Volumes/$drive HD/Backup/Pictures"
		rsync -av '/Users/jasoncunning/Pictures/SicPics' "/Volumes/$drive HD/Backup/Pictures"
		rsync -av '/Users/jasoncunning/Pictures/DesktopPics' "/Volumes/$drive HD/Backup/Pictures"
	fi
		
	if [ "Music" = "$1" ]; then
		echo "backing up Music..."
		mkdir "/Volumes/$drive HD/Backup/Music"
		rsync -av '/Users/jasoncunning/Music/iTunes' "/Volumes/$drive HD/Backup/Music"
	fi
		
	if [ "Documents" = "$1" ]; then
		echo "backing up Documents..."
		bkupdir="/Volumes/$drive HD/Backup/Documents/$dt"
		mkdir "$bkupdir"
		rsync -av --delete '/Users/jasoncunning/Documents/' "$bkupdir"
	fi
		
else

	echo "backing up Pictures..."
	mkdir "/Volumes/$drive HD/Backup/Pictures"
	rsync -av '/Users/jasoncunning/Pictures/JIM' "/Volumes/$drive HD/Backup/Pictures"
	rsync -av '/Users/jasoncunning/Pictures/SicPics' "/Volumes/$drive HD/Backup/Pictures"
	rsync -av '/Users/jasoncunning/Pictures/DesktopPics' "/Volumes/$drive HD/Backup/Pictures"
	
	echo "backing up Music..."
	mkdir "/Volumes/$drive HD/Backup/Music"
	rsync -av '/Users/jasoncunning/Music/iTunes' "/Volumes/$drive HD/Backup/Music"
	
	echo "backing up Documents..."
	bkupdir="/Volumes/$drive HD/Backup/Documents/$dt"
	mkdir "$bkupdir"
	rsync -av --delete '/Users/jasoncunning/Documents/' "$bkupdir"
	
fi
