# echo $(git log --pretty=format:"%s")

LATEST_TAG=$(git describe --tags --abbrev=0)
LATEST_TAG_TIME=$(git log -1 --format=%ai $LLATEST_TAG)
# MAJOR=0
# MINOR=0
# PATCH=0

# echo $LATEST_TAG

# git log --pretty=format:"%s" | while read line
# do
#   if [[ $line =~ '^fix:' ]];
#   then
#     PATCH+=1
#     echo "0.0.1"
#   elif [[ $line =~ '^feat:' ]];
#   then
#     MINOR+=1
#     echo "0.1.0"
#   elif [[ $line =~ '^BREAKING CHANGE:' ]];
#   then
#     MAJOR+=1
#     echo "1.0.0"
#   else
#     echo "$line"
#   fi
# done


# echo "$MAJOR.$MINOR.$PATCH"



git log --pretty=format:"%H - %aI : %s" --after="$LATEST_TAG_TIME" | while read line
do
  echo "$line"
done

echo $(git log -1 --format=%ai $LLATEST_TAG)

