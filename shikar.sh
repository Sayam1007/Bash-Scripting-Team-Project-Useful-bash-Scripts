#!/bin/bash
#START

echo "Enter your disk space warning limit"
read THRESHOLD

for path in `/bin/df -h | grep -vE 'Filesystem|tmpfs' | awk '{print $5}' | sed 's/%//g'`
do
        if [ $path -ge $THRESHOLD ] ; then
        df -h | grep $path% >> /tmp/temp
        fi
done

VALUE=`cat /tmp/temp | wc -l`
          if [ $VALUE -ge $THRESHOLD ]; then
          #mail -s "$HOSTNAME Disk usage is critical" $mailto < /tmp/temp
          echo -e "\e[31m **WARNING** : Storage level critical \e[0m"
          else 
          echo -e "\e[32m Storage under limit \e[0m"
          fi

#rm -rf /tmp/temp
#END
