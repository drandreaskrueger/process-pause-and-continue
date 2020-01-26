# process-pause-and-continue
Pause a process in order to continue it later. Super simple bash scripts: 

(1) find the process PID by name, then  
(2) kill -STOP/-CONT PID      

## instructions

### example process
start with

    nohup python processTestPrinter.py &
    tail -f nohup.out 

so you have (at least one) process to try this with.

### pause and continue

and then in another terminal

    ./process-pause.sh processTestPrinter.py
    ./process-continue.sh processTestPrinter.py

while you watch the `tail -f ...` output of the process(es).

### make available on PATH
copy `process-pause.sh process-continue.sh` into your `/usr/local/bin` or anywhere else in `echo $PATH`.


