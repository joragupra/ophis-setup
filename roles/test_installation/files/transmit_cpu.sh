#!/bin/bash

while true; do
    data=`uptime | awk '{print "cpu_load_short value=" substr($9, 1, length($9)-1)}'`
    echo "$data"  >> uptime.log;
    curl -i -XPOST 'http://localhost:8086/write?db=localtest' --data-binary "$data"
    sleep 1
done
