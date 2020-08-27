#!/bin/bash
set -e

echo "#################################################"
echo "Set variables."

FILE="trigger-github-pages.txt"

echo "#################################################"
echo "Set user data."

USER_NAME="${GITHUB_ACTOR}"
MAIL="${GITHUB_ACTOR}@users.noreply.github.com"
git config user.name "${USER_NAME}"
git config user.email "${MAIL}"

echo "#################################################"
echo "Create build trigger file."

date >> $FILE

git add -A -v
echo "Commit changes."
git commit -m 'Trigger GitHub Pages Rebuild'

echo "#################################################"
echo "Remove build trigger file."

rm $FILE
git add -A -v
echo "Commit changes (--amend)."
git commit --amend --allow-empty -m 'Trigger GitHub Pages Rebuild'

echo "#################################################"
echo "Push."
git push

echo "#################################################"
echo "GitHub Pages Rebuild triggered."
