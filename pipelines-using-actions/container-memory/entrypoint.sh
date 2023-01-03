#!/bin/sh -l

echo "Hello $1"   # uses the container-name input variable to print "Hello [container-name]" in the log file
memory=$(cat /proc/meminfo  | grep 'MemTotal')      # gets the current memory and sets it as an output variable that actions running later in a job can use.
#echo "name=memory::$memory" >> $GITHUB_OUTPUT # sets the action's output parameter using the workflow syntax
echo "name=memory::1024" >> $GITHUB_OUTPUT
echo $(cat $GITHUB_OUTPUT)