#!/bin/bash
  

MESSAGE=$(git log -1 HEAD --pretty=format:%s)

if [ "$MESSAGE" == 'feat' ]
    then 
        echo "Is feat $MESSAGE"
    else 
        echo "$MESSAGE IS NOT feat"
fi
echo "START: $MESSAGE END"



