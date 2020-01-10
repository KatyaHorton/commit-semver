#!/bin/bash


MESSAGE=$(git log origin/master..master --pretty=format:%s)

# if [ "$MESSAGE" == 'feat' ]
#     then 
#         echo "Is feat $MESSAGE"
#     else 
#         echo "$MESSAGE IS NOT feat"
# fi
echo "$MESSAGE"



