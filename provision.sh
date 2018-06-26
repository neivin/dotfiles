#!/bin/bash

# Provision a new machine
# Author: Neivin Mathew (me@neivin.com)

# Check if git is installed
if [ -x "$(command -v git)" ]
  echo 'ERROR: Git is not installed.' >&2
  exit 1
fi

# pull the repo
