#!/bin/bash


message=${git log --format=%B -n 1 <commit>}

echo "$messsage"

if ["$messsage" != "feat"] 
then
echo "NOT EQUAL"
fi
