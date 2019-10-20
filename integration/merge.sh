#!/bin/bash -e
# this script is for creating a release
# merging all st-* ontop of upstream into release branch including master for config

FEATURES_=$(git branch --list "st-*" |sort |xargs)
echo "# FEATURES: $FEATURES_" >&2

git checkout release
git reset --hard refs/heads/upstream
echo "# Merge FEATURES" >&2
git merge --no-ff -s octopus -m "create release using features: $FEATURES_" $FEATURES_
echo "# Merge CONFIG / INTEGRATION" >&2
git merge --no-ff --allow-unrelated-histories -m "add release config" master
