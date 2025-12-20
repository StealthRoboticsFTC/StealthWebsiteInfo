#!/bin/sh

echo "starting code deployment in process ID: $$"
setsid bash -c "cd ..; git pull > ci/git.log 2>&1; cd ci; ./deploy.sh > deploy.log 2>&1 &"
echo "sleeping for 10 sec ..."
sleep 10
echo "done..."
