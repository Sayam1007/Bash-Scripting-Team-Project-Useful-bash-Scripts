#!/bin/bash

echo -e  "\e[32m ---------- Enter youtube URL->-------- \e[0m"
read URL
echo -e "\e[32m ------------Select from menu-> (Press 1)to save in a folder ->(Press 2)to save in the music folder\e[0m"
read n

guide () {
  echo -e "\e[31m Youtube URL is required. \e[0m"
}


download_and_convert() {
 if((n==1))
 then 
 echo -e "\e[33m Enter the folder name Which is Present on Desktop \e[0m"
 read name
 cd
 cd Desktop
 cd $name
 youtube-dl -f bestaudio $URL --extract-audio --audio-format mp3
elif((n==2))
then  
cd ~/Music
youtube-dl -f bestaudio $URL --extract-audio --audio-format mp3
else
echo "Invalid Input"  
fi
}


if [ $URL = 0 ]; then
  guide
else
  download_and_convert
fi
