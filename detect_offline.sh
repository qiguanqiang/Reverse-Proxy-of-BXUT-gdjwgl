#!/bin/bash
while true
do
    ping -c 8 -w 100 baidu.com
    if [ $? != 0 ]
    then
		#offline, be online
		echo 'fail'
		MotionPro -s && sh /root/proxy/connect.sh && sh /root/proxy/route_add.sh
		nginx -s reload
    else
		#online, sleep more
		echo 'success! I gonna have a sleep a little bit while and then check again!'
        sleep 100
    fi
done

