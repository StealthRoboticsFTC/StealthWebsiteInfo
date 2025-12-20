#!/bin/sh

export HOMEDIR=StealthWebsiteInfo
export MEDIABUCKET=gs://media.stealth-robotics.org

echo -e "\n"`date +%D-%R` "Envr variables value:"
echo "HOMEDIR: $HOMEDIR"
echo "MEDIABUCKET: $MEDIABUCKET"

echo -e "\n"`date +%D-%R` "Starting deploy.sh in pid:" $$
cd ~/$HOMEDIR

#~ sync repo changes with repo bucket
echo -e "\n"`date +%D-%R` "Starting syncing with:" $MEDIABUCKET
gsutil rsync -rd -x "\.git|.*\.log$" . $MEDIABUCKET
