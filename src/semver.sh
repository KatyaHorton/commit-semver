#!/bin/bash


# COMMIT_MESSAGE = 
# read -p 'who is it? ' gitcommit
git log --pretty='format:%Creset%s' --no-merges -1
echo "Message was: " 