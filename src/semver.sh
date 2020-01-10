#!/bin/bash
  
MESSAGE=$(git log -1 HEAD --pretty=format:%s)
echo "START: $MESSAGE END"



