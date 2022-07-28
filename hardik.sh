#!/usr/bin/bash
color1='\033[1;31m'
color2='\033[1;33m'
color3='\033[1;36m'
color='\033[1;35m'
echo "enter 1 for finding files and dirctories in the working directory"
echo "enter 2 for providing path use \ for escaping spaces in the path"
read -p "Enter " choice
path=./
if [ $choice -eq 2 ]
then
        read -p "Enter path : " p
        path=$p
fi 
echo -e "${color2}Files found:" $(ls -lf "${path}" | wc -l)
echo -e "${color3}directories found:" $(ls -l "${path}" | grep ^d |wc -l)
echo -e "\033[1;32m FILES \033[m"
for F in $(ls "${path}")
do
if [[ -f  $F ]]
then
echo -e "${color} $F: ${color1} lines: $(cat $F | wc -l) ${color3}chars: $(cat $F | wc -c <$F)"
fi
done
echo
echo -e "\033[1;32m DIRECTORIES\033[m"
for DR in $(ls "$path")
do
if [[ -d $DR ]]
then
echo -e "${color} $DR"
fi
done

