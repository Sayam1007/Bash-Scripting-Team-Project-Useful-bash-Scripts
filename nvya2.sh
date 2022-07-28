#!/bin/bash
r='\033[0;31m'
c='\033[0m'
b="\033[0;34m"
y="\033[0;33m"
g="\033[0;32m"

echo -e "$r This is a simple password generator $c"
echo -e "$r ----------------------------------- $c"
echo -e "$b enter the passowrd length $c"
echo -e "$b ------------------------- $c"
read PASSLEN
echo -e "$g ------------------------- $c"
echo -e "$y press1-> bas64 password $c"
echo -e "$y ------------------------- $c"
echo -e "$g press2-> hexadceimal password $c"
echo -e "$g ----------------------------- $c"
read SELECT

for p in $(seq 1 5);
do

    if [ SELECT = 1 ]
then
openssl rand -base64 48 | cut -c1-$PASSLEN
else
    openssl rand -hex 48 | cut -c1-$PASSLEN
fi 
done
