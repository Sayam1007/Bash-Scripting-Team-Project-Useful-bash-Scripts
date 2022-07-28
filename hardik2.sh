#!/usr/bin/bash
processor=(`sudo lscpu | grep "Model name" | awk '{$1=$2="";print $0}'`)
system=(`lscpu | grep "64-bit" | awk '{print $4}'` )

echo -e "\033[1;95m\033[4m user:\033[m              "`whoami`
echo -e "\033[1;95m\033[4m host:\033[m              "`uname -n`
echo -e "\033[1;95m\033[4m OS:\033[m                "`uname -o`
echo -e "\033[1;95m\033[4m architecture:\033[m      "`uname -i`
echo -e "\033[1;95m\033[4m kernel:\033[m            "`uname -s`
echo -e "\033[1;95m\033[4m kernel version:\033[m    "`uname -v | awk '{print $1}'` 
echo -e "\033[1;95m\033[4m system:\033[m            "$system "operating system, x"$((system))"-based processor"
echo -e "\033[1;95m\033[4m processor:\033[m        "`lscpu | grep "Model name" | awk '{$1=$2="";print $0}'`
echo -e "\033[1;95m\033[4m RAM:\033[m               total: "`free -g | awk 'NR==2 {print $2}'`"GB free: "`free -g | awk 'NR==2 {print $4}'`"GB"
total=(`sudo df -H | grep "/dev/sda3" | awk '{print $2}'`)
available=(`sudo df -H | grep "/dev/sda3" | awk '{print $4}'`)
used=(`sudo df -H | grep "/dev/sda3" | awk '{print $3}'`)
echo -e "\033[1;95m\033[4m ROM:\033[m               total: "$total"B used: "$used"B available: "$available"B"

