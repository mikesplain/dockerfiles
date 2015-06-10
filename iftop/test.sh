#!/bin/bash

docker build -t iftop .
OUTPUT=$(docker run iftop --help 2>&1)

if [[ "$OUTPUT" == *"htop 1.0.3 - (C) 2004-2012 Hisham Muhammad"* ]];
then
echo "Success"
exit 0
else
echo "Failure"
exit 1
fi
