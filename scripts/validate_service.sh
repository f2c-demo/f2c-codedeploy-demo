#!/bin/bash

processesNum=`ps aux | grep SimpleHTTPServer | grep 9527 | grep -v grep | wc -l | sed 's/ //g'`
if [ "$processesNum" == "1" ];then
    exit 0
else 
    exit 1
fi
