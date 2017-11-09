#!/bin/bash -
# Program
# 红外感应捕获
# History:
# 2013/10/30 George Wing 1st
while true;
do
    GPIOSIGN=$(cat /sys/devices/virtual/gpio/gpio27/value)
    if [ $GPIOSIGN -eq 1 ]
    then
        echo "nobody"
    else
        echo "somebody nearby."
    fi
    sleep 1
done
