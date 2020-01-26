#!/usr/bin/python

"""
@summary: print something every second, 
          so this can be tried out:
		'ps -STOP <PID>'
		'ps -CONT <PID>'

@info: start with

    nohup python processTestPrinter.py &
    tail -f nohup.out 

and then in another terminal

    process-pause.sh processTestPrinter.py
    process-continue.sh processTestPrinter.py
"""

import time, sys

while True:
    print("ping %s" % time.time() )
    sys.stdout.flush()
    time.sleep(1)
