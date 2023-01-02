#!/bin/sh -l

echo "Hello $1"   # uses the who-to-greet input variable to print "Hello [who-to-greet]" in the log file
time=$(date)      # gets the current time and sets it as an output variable that actions running later in a job can use.
echo "name=time::$time" >> $GITHUB_OUTPUT # sets the action's output parameter using the workflow syntax