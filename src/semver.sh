#!/bin/bash


COMMIT_MESSAGE = ${git log --pretty='format:%Creset%s' --no-merges -1}
# read -p 'who is it? ' gitcommit

echo "Message was: " $COMMIT_MESSAGE