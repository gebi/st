#!/bin/bash -e
# upgrade upstream to origin/upstream and rebase all st-* branches ontop of it

echo "UNTESTED: just the idea for now"
exit 1

st_release_="$1"

FEATURES_=$(git branch --list "st-*" |sort |xargs)

# upgrade to new st version
git checkout upstream
git reset --hard "$st_release_"

# either import new patches or try rebasing them
for i in $FEATURES_; do
    echo "# $i"
    git checkout "$i"
    git rebase upstream
done
