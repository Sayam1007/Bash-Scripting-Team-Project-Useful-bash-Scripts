#!/bin/bash

sudo apt-get install sysstat
wget http://pagesperso-orange.fr/sebastien.godard/sysstat-10.0.0.tar.bz2
tar xvfj sysstat-10.0.0.tar.bz2
cd sysstat-10.0.0
./configure --enable-install-cron
make

make install



echo "enter time interval for CPU statistics:"
read time  

echo "Enter the no. of sets of data: "  
read num

echo -e "\n---------------------------------------------------------------------------"  

echo "$(sar -u $time $num -o log.file)"
read log


