#!/bin/bash
APP_NAME=xk_price-0.0.1-SNAPSHOT.jar
PID=$(ps -ef | grep $APP_NAME | grep -v grep | awk '{ print $2 }')
if [ -z "$PID" ]
then
    echo Application is already stopped!
else
    kill $PID
    echo kill $PID successful!
fi
