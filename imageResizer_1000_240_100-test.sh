#!/bin/bash 
cd ~/Desktop/resizer/
for f in *.jpg
	do
		cp -v $f ~/Desktop/resizer/1000/"1000-a_$f"
	done
	
cd ~/Desktop/resizer/1000/
sips -Z 1000 *.jpg 

cd ~/Desktop/resizer/
for t in *.jpg
	do
		cp -v $t ~/Desktop/resizer/240/"240-a_$t"
	done
cd ~/Desktop/resizer/240/
sips -Z 240 *.jpg 

	
cd ~/Desktop/resizer/
for t in *.jpg
	do
		cp -v $t ~/Desktop/resizer/100/"100-a_$t"
	done
cd ~/Desktop/resizer/100/
sips -Z 100 *.jpg 

cd ~/Desktop/resizer/
for x in *.jpg
	do 
		cp -v $x ~/Desktop/resizer/Complete/$x
 	done
cd ~/Desktop/resizer/Complete 	

/Applications/ImageOptim.app/Contents/MacOS/ImageOptim *.jpg 
