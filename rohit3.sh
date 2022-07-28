#!/bin/bash

declare -a arr[@]
echo " Enter the name of the websites"
read -a arr

for i in ${arr[@]}
do

if curl -I "$i" 2>&1 | grep -w "200\|301" ; then
      echo "$i is up"
else 
     echo "$i is down"

fi     
      
done
