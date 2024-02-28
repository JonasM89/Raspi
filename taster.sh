#!/bin/bash

taster=13
rot=16

#init gpio
for f in $rot; do 
echo $f  > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio$f/direction
done

#init gpio
for f in $taster; do 
echo $f  > /sys/class/gpio/export
echo IN > /sys/class/gpio/gpio$f/direction
done

while true ; do

if [taster];then
echo 1 > /sys/class/gpio/gpio16/value;
fi
done
