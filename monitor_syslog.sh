#!/bin/bash
#comment linuxquestion bash script continously read log


string="alarm start"

ssh playroom@playroom tail -n 0 -F /var/log/syslog | \
while read LINE
do
echo "$LINE" | grep -q "alarm start"

if [ $? = 0 ]
then
echo "triggering curl and recording DT"
echo "Time: $(date -Iseconds) " >> alarm.txt
curl http://user:pass@node-red externalIP:1880/playroom_on
echo "sent curl"
#echo "not found our string"
fi
done

