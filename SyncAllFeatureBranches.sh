#!/bin/bash

for b in $(git branch --list 'feature-*' | tr -d '* ')
do
    echo "--------------------------------"
    echo "Updating branch: $b..."
    git checkout $b
    git merge main
done

git checkout main
echo "--------------------------------"
echo "All feature branches are synced with main!"