#!/bin/bash

if ! [ -x "$(command -v git)" ];then
echo "Git not found in your system"
echo "--------------------"
echo "--------------------"
echo '###Installing Git..'
sudo apt-get install git -y
echo "---------------------"
echo '###Congigure Git..'

echo "Enter the  Username for Git:";
read GITUSER;
git config --global user.name "${GITUSER}"

echo "Enter the Email for Git:";
read GITEMAIL;
git config --global user.email "${GITEMAIL}"

echo "-------------------------------------"
echo "-------------------------------------"
echo 'Git has been configured!'
git config --list

else
echo "Git is already installed in your system"
echo "Do you want to reinstall git (will remove the package and install first)"
echo "1 .Yes "
echo "2. No"
read r
if((r==1))
then
echo "-----------------------------"
echo "-----------------------------"
echo "Removing package"
sudo apt-get remove git -y
echo "-----------------------------"
echo "-----------------------------"
echo '###Installing Git..'
sudo apt-get install git -y

echo '###Congigure Git..'

echo "Enter the  Username for Git:";
read GITUSER;
git config --global user.name "${GITUSER}"

echo "Enter the Email for Git:";
read GITEMAIL;
git config --global user.email "${GITEMAIL}"
echo "-------------------------------------"
echo "-------------------------------------"
echo 'Git has been configured!'
git config --list
elif((r==2))
then
exit
fi 
fi
