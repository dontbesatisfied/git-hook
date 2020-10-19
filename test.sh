LATEST_TAG=$(git describe --tags --abbrev=0)
LATEST_TAG_TIME=$(echo $(git show -q v0.0.3 --pretty=format:%ai) | grep -Eo '\d{4}-\d{2}-\d{2}\s\d{2}:\d{2}:\d{2}\s\+\d{4}')

PATTERN='(fix|feat|BREAKING CHANGE):'

git log --pretty=format:"%H - %aI : %s" --after="($LATEST_TAG_TIME)" | while read line
do
  if [[ $line =~ $PATTERN ]]; then
    echo "$line"
  fi
done >> changelog.txt



# echo $(date -u +"%Y-%m-%dT%H:%M:%SZ")