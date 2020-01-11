#!/bin/bash


MESSAGES=$(git log origin/master..master --pretty=format:%s)



SAVEIFS=$IFS   # Save current IFS
IFS=$'\n'      # Change IFS to new line
names=($MESSAGES) # split to array $names
IFS=$SAVEIFS   # Restore IFS

for (( i=0; i<${#names[@]}; i++ ))
do 
echo ${names[$i]}
  COMMIT_MESSAGE=${names[$i]}
    if [ "${COMMIT_MESSAGE}" == *'BREAKING CHANGES'* ];
        then  echo 'MAJOR Version'
    elif [ "${COMMIT_MESSAGE}" == *'feat'* ];
        then echo 'MINOR version'
    elif [ "${COMMIT_MESSAGE}" == *'fix'* ];
        then echo 'PATCH version'
 fi
     
done
