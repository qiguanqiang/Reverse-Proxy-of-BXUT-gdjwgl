#!/bin/bash

LOG_PATH='/var/log/Mei_bjut'

while true
do
	echo `w3m localhost`|grep 正方
	if [ $? == 0 ]
	then
		echo `date +%Y-%m-%d_%H:%M:%S`': accessible!' >> $LOG_PATH/Mei_running.log
		sleep 60
	else
		MotionPro -s && sh /root/proxy/connect.sh && sh /root/proxy/route_add.sh
		nginx -s reload
		echo `date +%Y-%m-%d_%H:%M:%S`': Failed! Excuted connection scripts!' >> $LOG_PATH/Mei_running.log
	fi
done
