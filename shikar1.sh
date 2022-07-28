#!/bin/bash
echo "enter "
read ALERT_ON
CURRENT_USAGE=$(df / | grep -v 'Filesystem' | awk '{print $5}' | sed 's/%//g')


if [ "$CURRENT_USAGE" -gt "$ALERT_ON" ] ; then
    mail -s 'Disk Usage Warning' shikharkapasia@gmail.com  << EOF
Disk almost full on / partition. Current Useage: $CURRENT_USAGE%
EOF
fi
