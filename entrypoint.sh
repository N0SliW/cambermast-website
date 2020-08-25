#!/bin/bash
set -e

echo "#################################################"
echo "Check for commit file."

FILE=${COMMIT_FILE_NAME}
if [ -f "$FILE" ]; then
    echo "$FILE exists."
    rm $FILE
else
    echo "$FILE does not exist."
    date >> $FILE
fi

echo "#################################################"
echo "Set user data."
USER_NAME="${GITHUB_ACTOR}"
MAIL="${GITHUB_ACTOR}@users.noreply.github.com"
git config user.name "${USER_NAME}"
git config user.email "${MAIL}"

echo "#################################################"
echo "Add changes to file, commit and push to trigger build."

git add -A -v
git status

git diff-index --quiet HEAD || echo "Commit changes." && git commit -m 'Trigger build' && echo "Push." && git push

echo "#################################################"
echo "Build triggered."
