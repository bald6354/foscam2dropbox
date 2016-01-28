#!/bin/bash

PATH=/home/wes/anaconda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
   
echo Starting fileMover

inPath="/home/wes/Dropbox/Apps/Attachments/"
archPath="/home/wes/Dropbox/Apps/Archive/"
gifPath="/home/wes/Dropbox/Apps/last24.gif"

#Move files older than 24hours to the archive
cd $inPath
echo "Moving Files"
for file in $( find *.jpg -mtime +1 ); do
    echo "Moving:" $file
    mv $file $archPath
done

#Create the 24hrs gif
echo "Creating GIF"
convert -scale 25%% *.jpg $gifPath

#Delete files older than 30 days
echo "Deleting Old Files"
cd $archPath
for file in $( find . -mtime +30 ); do
    echo "Deleting:" $file
    rm -f $file
done

echo "Done!"

