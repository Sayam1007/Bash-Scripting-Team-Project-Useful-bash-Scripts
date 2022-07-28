#!/bin/bash

cd
x=0

while [ $x = 0 ]

do
echo "---------------------------"
echo "---------------------------"
echo "1) move forward into a directory 
2) Search by entering path 
3) move backward 
4) Convert all files
5) convert selected files
6) Exit"


read op
case $op in
1)
echo ""
ls
echo ""
echo "enter the name of directory"
read a
cd $a
echo "++++++++++++++++++++++++++++"
ls
;;

2)
echo ""
ls
echo ""
echo "enter full path (eg - abc/exy/mnop)"
read path
cd $path
echo "++++++++++++++++++++++++++++"
ls
;;

3)
cd -
echo "++++++++++++++++++++++++++++"
ls
;;

4)
echo " Enter the size of the images"
read SIZE


      convert *.jpg -resize $SIZE -modulate 150 -vignette 100x300 -bordercolor red -border 10 {new}${SIZE}.jpg
      
exit
;;
5)

declare -a arr[@]
echo " Enter the name of the images"
read -a arr

echo " Enter the size of the images"
read SIZE
for i in ${arr[@]}
do


      convert "${i}.jpg" -resize $SIZE -modulate 150 -vignette 100x200 -bordercolor red -border 10 "${i}${SIZE}.jpg"
done
      
exit
;;

6)
exit

esac

continue

done
