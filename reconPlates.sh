#!/bin/bash
## by Antonio 'Visi@n' Broi
## decomentare la prima volta oppure installare  a manina
#sudo apt-get update
#sudo apt-get install tesseract-ocr tesseract-ocr-all libtesseract3 libtesseract-dev
#sudo apt-get install openalpr
#sudo apt-get install gliv tree
#chmod 755 reconPlates.sh


#### ./reconPlates.sh directoryImages directoryTXT eu
###lingue disponibili: 
#eu EUROPA 
#us U.S.A.
#lau.traineddata  leu.traineddata  lgb.traineddata  lkr.traineddata  lsg.traineddata  lus.traineddata

cowthink -f daemon "License Plates by Visi@n"

for file in $( ls $1); do
	
	if [ -d "$1" ]; then 
		echo " "; 
			else mkdir "$1"; 
	fi
	
	if [ -d "$2" ]; then 
		echo " "; 
			else mkdir "$2"; 
	fi
	

	echo "$file"
	file "$1"/"$file"	
	alpr -c "$3" "$1"/"$file" > "$2"/"$file".txt
	cat "$2"/"$file".txt
	echo "==================================">> all.txt
	echo "$1""$file" >> all.txt
	echo "                                  ">> all.txt
	cat "$2"/"$file".txt >> all.txt
	echo "==================================">> all.txt
	
	cat "$2"/"$file".txt
	gliv "$1"/"$file"
	echo "============================================"
	echo "                           "
done	
tree
cowthink -f daemon "License Plates by Visi@n"
exit
