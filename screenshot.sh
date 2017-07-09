#!/bin/sh
#Variables Set
imgpath=~/Documents/imgtmp.jpg
filename=`date '+%Y-%m-%d_%H-%M-%S'`.jpg #generates the file name
remotepath=https://img.twmo.co.uk/$filename
dest=TTX #the location of my server stated by config
###########################################
#capturing file and giving it a temp name
screencapture -o -i $imgpath
echo $remotepath | pbcopy #copying file to clipboard
scp $imgpath $dest:/var/www/img/$filename #copying file to the server and giving it its final name
#Cleaning up temp file
rm $imgpath
