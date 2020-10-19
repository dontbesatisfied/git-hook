# echo $(git log --pretty=format:"%s")


git log --pretty=format:"%s" | while read line
do
  echo $line
done


echo $(git describe --tags)