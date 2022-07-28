#! /bin/bash

x=0
while [ $x=0 ]
do
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------   "
echo -e "\e[0m// Select from menu \e[0m//                                       -"
echo -e "1.\e[0m To display hardware specifications of a system                 -"
echo -e "2.\e[0m To change size of images                              \e[0m    -"
echo -e "3.\e[0m Files and Directory lines/character count             \e[0m    -"
echo -e "4.\e[0m Encryption and Decryption of files                    \e[0m    -"
echo -e "5.\e[0m To Monitor Disk Space                                 \e[0m    -"
echo -e "6.\e[0m To Check CPU Usage                                    \e[0m    -"
echo -e "7.\e[0m To check if file exist or not                         \e[0m    -"
echo -e "8.\e[0m Youtube video to mp3 download                         \e[0m    - "
echo -e "9.\e[0m To fetch and download content from Remote Repository  \e[0m    -"
echo -e "10.\e[0m To perform basic utility task using an interactive menu \e[0m -"
echo -e "11.\e[0m To generate Password.                                 \e[0m   -"
echo -e "12.\e[0m To create backup of files                             \e[0m   -"
echo -e "13.\e[0m Color and text format guide                           \e[0m   -"
echo -e "14.\e[0m To add data from textfile to mysql table                      -"
echo -e "15.\e[0m To check website status                              \e[0m    -"
echo -e "16.\e[0m Exit                                                          -"
read r

case $r in

1)

./hardik2.sh
;;

2)
source ./rohit.sh
;;

3)
./hardik.sh
;;

4)
./nvya.sh
;;

5)
./shikar.sh
;;

6)
./mohita.sh
;;

7)
./shubham.sh
;;

8)
./rishab.sh
;;

9)
./gitpull.sh
;;

10)
./sayam2.sh
;;

11)
./nvya2.sh
;;

12)
./shubham2.sh
;;

13)
./hardik3.sh
;;


14)
./rohit2.sh
;;

15)
./rohit3.sh
;;


16)
exit
;;

esac
continue 
done

