#!/bin/bash


COMMIT_MESSAGE = ${git log --pretty='format:%Creset%s' --no-merges -1}
if [COMMIT_MESSAGE == 'feat'] 
then
    npm version patch
    git add . 
    git commit -m COMMIT_MESSAGE
fi
echo "Message was: " $COMMIT_MESSAGE