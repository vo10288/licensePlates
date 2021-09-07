#!/bin/bash
## by Antonio 'Visi@n' Broi
## decomentare la prima volta oppure installare  a manina
#sudo apt-get update
#sudo apt-get ffmpeg
#chmod 755 video2png.sh


#### ./video2png.sh video.mp4 OutputDirectory framerate


cowthink -f daemon "Video to PNG by Visi@n"
mkdir "$2"
ffmpeg -i "$1" -r "$3" -f image2 "$2"/"%4d.png"

	echo "============================================"
	echo "                           "

ls "$2" | wc -l
cowthink -f daemon "Video to PNG by Visi@n"
exit
