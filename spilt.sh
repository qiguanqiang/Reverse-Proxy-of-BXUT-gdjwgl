#!/bin/bash
logs_path="/var/log/nginx/"
logs_path_new="/etc/nginx/log/"
detect_offline_log_path="/var/log/Mei_bjut"
detect_offline_log="Mei_running.log"
#20190526
access_log="access.log"
error_log="error.log"
mv "${logs_path}${access_log}" ${logs_path_new}access/access_$(date -d "yesterday" +"%Y%m%d").log
mv "${logs_path}${error_log}" ${logs_path_new}error/error_$(date -d "yesterday" +"%Y%m%d").log
mv $detect_offline_log_path/$detect_offline_log $detect_offline_log_path/running_$(date -d "yesterday" +"%Y%m%d").log
nginx -s reload
