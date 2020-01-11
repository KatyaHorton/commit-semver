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
        then   echo 'major' 
        # then  npm version major echo 'major' 
    elif [ "${COMMIT_MESSAGE}" == *'feat'* ];
        then   echo 'minor'
        # then  npm version minor echo 'minor'
    elif [ "${COMMIT_MESSAGE}" == *'fix'* ];
        then   echo 'patch'
 fi
   
        # then  npm version patch echo 'patch'
done
