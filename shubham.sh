
#!/bin/bash
filename=$1
red='\033[0;31m'
green='\033[0;32m'
clear='\033[0m'
echo "enter name of the file to be checked"
read filename
if [ -f "$filename" ]; then
echo -e "${green}File exists${clear}"
else
echo -e "${red}File does not exist${clear}"
fi

