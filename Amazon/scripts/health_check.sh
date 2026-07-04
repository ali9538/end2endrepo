#!/bin/bash

IP=$1
PORT=8090

STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://$IP:$PORT/Amazon/)

if [ "$STATUS" = "200" ]; then
    echo "SUCCESS"
else
    echo "FAILED"
fi
