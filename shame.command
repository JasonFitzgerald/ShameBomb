#!/bin/bash
osascript -e 'set volume 8'
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Volumes/SHAME/MLPDESKTOP.jpg"'
say -a ? | grep "Display Audio" | tail -1 | cut -d" " -f4 > ~/Desktop/SHAMEBOMB.txt
OUTPUT=`cat ~/Desktop/SHAMEBOMB.txt`
COUNTER=0
cp /Volumes/SHAME/SHAME.txt ~/Desktop/SHAME.txt
sleep 15
while [ $COUNTER -lt 3 ]; do
	cat ~/Desktop/SHAME.txt | say -a "$OUTPUT" 
	sleep 5
	let COUNTER=COUNTER+1
done
open ~/Desktop/SHAME.txt
osascript -e 'tell application "TextEdit"' -e 'tell application "System Events"' -e 'keystroke "f" using {control down, command down}' -e "end tell" -e "end tell"
/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend
