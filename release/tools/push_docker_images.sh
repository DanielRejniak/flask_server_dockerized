#!/bin/bash

# Ensure params are passed
if [ $# -eq 0 ]
then
    echo "Provide docker registry name"
else
    # Get current git commit number
    git_commit_number=$(git log -1 --format=\"%H)

    # Get current git branch name
    git_branch_name=$(git rev-parse --abbrev-ref HEAD)

    # Generate current docker tag
    current_tag=$git_branch_name"-${git_commit_number:1}"

    # Push docker image to docker registry
    docker push "$1/flask-server:$current_tag"
fi
