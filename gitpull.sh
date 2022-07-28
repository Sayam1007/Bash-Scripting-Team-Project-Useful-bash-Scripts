#! /bin/bash

echo "--------------------------------------------------------------------------------------------------"
echo -e " Do you want to pull 1(yes)/0(no) press 1 or 0"
read a

if(($a==1))
then 
echo -e "\e[33m Enter the name of folder you want to create(Press 1) or keep the same repository name(Press 2) \e[0m"
    read f
    if(($f==1))
    then
    echo -e "\e[33m Enter the name of the folder"
    read i
    mkdir $i
    cd $i
        

    elif(($f==2))
    then
    echo "Enter URL for git remote Repository"
    read url
    basename=$(basename $url)
    mkdir $basename
    cd $basename
    git init   
    else 
    echo "//Invalid Input//"
    fi

echo -e "\e[33m Do you want to pull using URL or using Username and Repository name \e[0m "
echo -e "\e[33m 1) Press 1 if you want to pull using URL ***** \e[0m"
echo -e "\e[33m 2) Press 2 if you want to pull using username and repository name \e[0m *****"
read s

if(($s==1))
 then 
   echo -e "\e[32m Enter the URL from where you want to pull \e[32m"
   read k
    git pull $k
  
   elif(($s==2)) 
     then 
       echo -e "\e[32m Enter your github Username: \e[0m"
        read u
echo -e "\e[32m Enter the repository name from which you want to pull the data \e[0m"
read r
git pull  https://github.com/$u/$r 
echo -e "\e[33m Pulling from repository \e[0m"
else 
  echo "//Invalid input//"
fi

elif(($a==0))
 then
   echo -e "\e[31m Cant pull from Repository \e[0m"

else
echo -e "\e[31m Invalid Input \e[0m"
fi
