#!/bin/bash 


cd ~/Desktop/resizer

if [ ! -d ~/Desktop/resizer/1000 ]
	then 
		mkdir ~/Desktop/resizer/1000 
fi

if [ ! -d ~/Desktop/resizer/240 ]
	then 
		mkdir ~/Desktop/resizer/240 
fi

if [ ! -d ~/Desktop/resizer/640 ]
	then 
		mkdir ~/Desktop/resizer/640 
fi

if [ ! -d ~/Desktop/resizer/100 ]
	then 
		mkdir ~/Desktop/resizer/100 
fi

cd ~/Desktop/resizer

for f in *.jpg
	do
		cp -v $f ~/Desktop/resizer/1000/"1000_$f"
	done
	
cd ~/Desktop/resizer/1000/
sips -Z 1000 *.jpg 

cd ~/Desktop/resizer/
for m in *.jpg
	do
		cp -v $m ~/Desktop/resizer/640/"640_$m"
	done
cd ~/Desktop/resizer/640/
sips -Z 640 *.jpg 

cd ~/Desktop/resizer/
for t in *.jpg
	do
		cp -v $t ~/Desktop/resizer/240/"240_$t"
	done
cd ~/Desktop/resizer/240/
sips -Z 240 *.jpg 
	
cd ~/Desktop/resizer/
for q in *.jpg
	do
		cp -v $q ~/Desktop/resizer/100/"100_$q"
	done
cd ~/Desktop/resizer/100/
sips -Z 100 *.jpg 

