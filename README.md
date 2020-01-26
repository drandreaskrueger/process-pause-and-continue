# process-pause-and-continue
Pause a process in order to continue it later. Super simple bash scripts: (1) find the process <PID> by name, then (2) kill -STOP/-CONT <PID>    

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
copy `process-pause.sh` and `process-continue.sh` into your `~/bin` or `/usr/local/bin` or anywhere else in your `echo $PATH`.

### Known issues
It works also for MANY processes with SAME search term 'process-test-printer.py' BUT then prints an error "process-pause.sh ... syntax error in expression". To try it out, just start  `nohup python process-test-printer.py &` three times. Function is not affected; error still ugly. Perhaps you find a simple way how to fix that script? Those lines are just there for the case that NO process is found. And the error appears because the grep...awk finds MORE THAN one.  

