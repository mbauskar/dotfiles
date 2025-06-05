# reset branch with origin

function reset() {
    branch=$1
    git fetch origin $branch
    git checkout $branch
    git reset --hard origin/$branch
}

function reset-upstream() {
    branch=$1
    git fetch upstream $branch
    git checkout $branch
    git reset --hard upstream/$branch
}
