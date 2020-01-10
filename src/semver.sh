#!/bin/bash


message=$(git log --format=%B -n 1 <commit>)
echo "$messsage"
# if [COMMIT_MESSAGE == 'feat'] 
# then
#     npm version patch
#     git add . 
#     git commit -m COMMIT_MESSAGE
# fi
# echo "Message was: " ${git log --pretty='format:%Creset%s' --no-merges -1}