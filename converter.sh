echo "Installing unoconv package"
echo "--------------------------"
echo "--------------------------"
sudo apt install unoconv -y
menu(){
	echo "----------------------------"
	echo "	MAIN - MENU"
	echo "----------------------------"
	echo "1. Convert docx to pdf"
	echo "2. Convert text to pdf"
	echo "3. Exit"
	echo "----------------------------"
	echo "Please enter option [1 - 3]:"  
}

option=y
while [ "$option" != "3" ]
do      
	menu 
	read option
	case $option in
		1) 

echo "Enter the path where file is present"
read n
cd $n
echo "Enter the file name"
read filename
unoconv -f  pdf "$filename"
;; 

2)
echo "Enter the path where file is present"
read n
cd $n
echo "Enter the file name"
read filename
unoconv -f  pdf "$filename"
;; 

3) ./main.sh
;;
		
esac
done

