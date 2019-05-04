#!/bin/bash

logs_path="/var/log/nginx/"
logs_path_new="/etc/nginx/log/"
access_log="access.log"
error_log="error.log"
#define paths of the nginx and related logs.

mv "${logs_path}${access_log}" ${logs_path_new}access/access_$(date -d "yesterday" +"%Y%m%d").log
mv "${logs_path}${error_log}" ${logs_path_new}error/error_$(date -d "yesterday" +"%Y%m%d").log
#split logs using mv command by date.

nginx -s reload
#reload the nginx for writing new logs.
