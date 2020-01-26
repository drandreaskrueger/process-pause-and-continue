#!/bin/bash

# for INFO see https://github.com/drandreaskrueger/process-pause-and-continue

if [ $# -eq 0 ]
  then
    echo "You provided no grep search pattern, exiting."
    exit
fi

PID_FOUND=$(ps aux | grep $1 | grep -v grep | grep -v process-pause.sh | awk '{ print $2 }')
if [[ "$PID_FOUND" == "" ]]
  then
    echo "No such process found, exiting."
    exit
fi

echo Found a process with that grep pattern \'$1\': $PID_FOUND
ps aux | grep $1 | grep -v grep | grep -v process-pause.sh

echo stopping it, so that it can be continued, see flag S changed to T:
kill -STOP $PID_FOUND
ps aux | grep $1 | grep -v grep | grep -v process-pause.sh

echo Remember you can do the same with pgrep / pkill: https://github.com/drandreaskrueger/process-pause-and-continue#reinventing-the-wheel