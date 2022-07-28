#!/bin/bash

menu(){
	echo "----------------------------"
       
	echo "1. Users currently logged in"
	echo "2. Number of users currently logged in"
	echo "3. To upgrade linux packages"
        echo "4. To display on going Processes"        
	echo "5. Exit"
	echo "----------------------------"
	echo "Please enter option [1 - 5]:"  
}

option=y
while [ "$option" != "5" ]
do
	menu 
	read option
	case $option in
		 
		1) who;;
		2) who | wc -l;;
		3) sudo apt-get upgrade;;
                4) top;;
		5) ./main.sh;;
		*) echo "Wrong option";;
esac
done


