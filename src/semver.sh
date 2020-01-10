#!/bin/bash


MESSAGES=$(git log origin/master..master --pretty=format:%s)



SAVEIFS=$IFS   # Save current IFS
IFS=$'\n'      # Change IFS to new line
names=($MESSAGES) # split to array $names
IFS=$SAVEIFS   # Restore IFS

for (( i=0; i<${#names[@]}; i++ ))
do 
if [${names[$i]} == 'feat']
 then echo "Add patch"
elif [${names[$i]} == 'not feat']
 then echo "Add minor"
elif [${names[$i]} == 'not feat']
 then echo "Add major"
fi
     
done


# if [ "$MESSAGE" == 'feat' ]
#     then 
#         echo "Is feat $MESSAGE"
#     else 
#         echo "$MESSAGE IS NOT feat"
# fi
# echo "$MESSAGES"
# echo "${y}"
# echo "${y[1]}"
# echo "${y[2]}"



