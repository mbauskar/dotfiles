#!/bin/bash

set -e

# show commits owned by current author
AUTHOR_NAME=$(git config user.name)
git log --author="$AUTHOR_NAME" --oneline --graph --decorate --all -- "$@"
