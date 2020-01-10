#!/bin/bash
  

MESSAGE=$(git log 0 HEAD --pretty=format:%s)

if [ "$MESSAGE" == 'feat' ]
    then 
        echo "Is feat"
    else 
        echo "IS NOT"
fi
echo "START: $MESSAGE END"



