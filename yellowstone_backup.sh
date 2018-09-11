#!/bin/bash

rsync -av /Users/jcunning/Pictures/JIM/SicPics "/Volumes/Yellowstone HD/Backup/Pictures/JIM"
rsync -av /Users/jcunning/Pictures/Photos\ Library.photoslibrary "/Volumes/Yellowstone HD/Backup/Pictures"
rsync -av /Users/jcunning/Guitar/CreativeBass/*.* "/Volumes/Yellowstone HD/Backup/Guitar/CreativeBass"
rsync -av /Users/jcunning/Documents/PersonalSrc "/Volumes/Yellowstone HD/Backup/Documents"
rsync -av /Users/jcunning/Documents/Misc/*.* "/Volumes/Yellowstone HD/Backup/Documents/Misc"
rsync -av /Users/jcunning/Documents/Budget/Budget\ 20??.ods "/Volumes/Yellowstone HD/Backup/Documents/Budget"
rsync -av /Users/jcunning/Documents/Investing/3Sig-Balance.ods "/Volumes/Yellowstone HD/Backup/Documents/Investing"
rsync -av "/Users/jcunning/Music/iTunes" "/Volumes/Yellowstone HD/Backup/Music"
