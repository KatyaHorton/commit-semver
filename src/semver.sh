#!/bin/bash


message=$(git log --format=%B -n 1 <commit>)

echo "MESSAGE: $messsage"


