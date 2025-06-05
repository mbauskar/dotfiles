#!/bin/bash

set -e

# reset the git branch with origin
branch=$1
git fetch origin $branch
git checkout $branch
git reset --hard origin/$branch
