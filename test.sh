LATEST_TAG=$(git describe --tags --abbrev=0)
LATEST_TAG_TIME=$(echo $(git show -q v0.0.3 --pretty=format:%ai) | grep -Eo '\d{4}-\d{2}-\d{2}\s\d{2}:\d{2}:\d{2}\s\+\d{4}')


git log --pretty=format:"%H - %aI : %s" --after="($LATEST_TAG_TIME)" | while read line
do
  echo "$line"
done >> changelog.txt



