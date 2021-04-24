echo ".. delete tag $1.. (errors means it doesn't exist)"
git tag -d $1
git push --delete origin $1

set -e
echo " .. add tag $1"
git tag -a -m "Draft" $1
git push --follow-tags
