#!/bin/bash


sudo mysql -e "show databases;"
sayam10072001
echo "enter the name of database"
read name

cd
ls
x=0
while [ $x = 0 ]

do
echo "---------------------------"
echo "---------------------------"
echo "1) move foward into a directory 
2) Search by entering path 
3) move bachward 
4)add info
5)exit
"


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
echo "enter the name of the text file from which you have to copy data"
read file
sudo cp -R -u -p $file.txt /var/lib/mysql-files

sudo mysql -e "use $name;
show tables;"

echo "enter the name of the table"
read table

sudo mysql -e "use $name;
select*from $table;
load data infile '/var/lib/mysql-files/$file.txt' replace INTO TABLE $table FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
select*from $table;"


#echo " enter text file name"
#read abc

#x=$(pwd)


#echo "$x"
;;
5)
exit
esac

continue

done

