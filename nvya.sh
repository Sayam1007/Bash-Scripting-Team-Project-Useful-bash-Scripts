#! /bin/bash
red='\033[0;31m'
clear='\033[0m'
blue="\033[0;34m"
yellow="\033[0;33m"
green="\033[0;32m"
echo -e "----- ${red} please choose among the following command ${clear} -----"
echo -e "$yellow----------To encrypt the file  (press 1) To decrypt the file (press 2) "
read COMMAND
if (($COMMAND==1));
then
 
    echo -e "$blue------You have choosen to encrypt yhe file----$clear"
    echo -e "$yellow-----please enter the file name---$clear"
    read file
    gpg -c $file
    echo -e "$blue------file has been encrypted------$clear"
else
    echo -e "$green------You have choosen to decrypt the file-----$clear"
    echo -e "$yellow-----please enter the file name---$clear"
    read file2
    gpg -d $file2
    echo -e "$green-------file has been decrypted--------$clear"
fi
