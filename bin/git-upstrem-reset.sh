#!/bin/bash

set -e

# reset the git branch with upstream
branch=$1
git fetch upstream $branch
git checkout $branch
git reset --hard upstream/$branch
