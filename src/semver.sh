#!/bin/bash

commitmessage = git log --pretty='format:%Creset%s' --no-merges -1
# read -p 'who is it? ' gitcommit
echo "$commitmessage"