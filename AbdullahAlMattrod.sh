#!/bin/bash
#creating at 26/07/2012
#this script using to dowload alquran mp3 with the reciter is Abdullah Al-Mattrod
#this script will be automatically download all of alquran
#created by mohamad sofiyani

urls=()
for (( c=1; c<=114; c++ ))
do
#creating array for link with 1 number segment
if (($c < 10 ))
 then
        urls[$c]='http://server8.mp3quran.net/mtrod/00'$c'.mp3'
fi
#creating array for link with 2 number segment
if (($c >9 && $c<100 ))
 then
        urls[$c]='http://server8.mp3quran.net/mtrod/0'$c'.mp3'
fi
#creating array for link with 3 number segment
if (($c >99 ))
 then
        urls[$c]='http://server8.mp3quran.net/mtrod/'$c'.mp3'
fi
done


for f in "${urls[@]}"
do
	wget "$f"
done

