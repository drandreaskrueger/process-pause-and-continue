#!/bin/bash

# for INFO see https://github.com/drandreaskrueger/process-pause-and-continue

if [ $# -eq 0 ]
  then
    echo "You provided no grep search pattern, exiting."
    exit
fi

PID_FOUND=$(ps aux | grep $1 | grep -v grep | awk '{ print $2 }')
if [[ $PID_FOUND -eq "" ]]
  then
    echo "No such process found, exiting."
    exit
fi

echo Found a process with that grep pattern \'$1\': $PID_FOUND
ps aux | grep $1 | grep -v grep

echo stopping it, so that it can be continued, see flag S changed to T:
kill -STOP $PID_FOUND
ps aux | grep $1 | grep -v grep

