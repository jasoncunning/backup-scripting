#!/bin/bash

# current date
dt=$(date +%Y-%b-%d)
# destination drive
#drive=Lamar
drive=Yellowstone

mkdir -p "/Volumes/$drive HD/Backup"
mkdir -p "/Volumes/$drive HD/Backup/Pictures/JIM"
mkdir -p "/Volumes/$drive HD/Backup/Music"
mkdir -p "/Volumes/$drive HD/Backup/Documents/$dt"

rsync -av /Users/jcunning/Pictures/DesktopPics "/Volumes/$drive HD/Backup/Pictures"
rsync -av /Users/jcunning/Pictures/JIM/SicPics "/Volumes/$drive HD/Backup/Pictures/JIM"
rsync -av /Users/jcunning/Music/iTunes "/Volumes/$drive HD/Backup/Music"
rsync -av --exclude kick.txt --exclude kim.dmg /Users/jcunning/Documents/ "/Volumes/$drive HD/Backup/Documents/$dt"
