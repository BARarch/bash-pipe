if [ -z "$1" ]; then
  echo "What do you want to submit"
  read TITLE
else
  TITLE="$1"
fi


d=date
fd=+'%y-%m-%d'
td=$($d $fd)
ft=+'%T'
ts=$($d $ft)

if [ -z "$2" ]; then
  git commit -m "Submitted on $td at $ts" $TITLE.py
else
  MSG="$2"
  git commit -m "Submitted on $td at $ts $MSG" $TITLE.py
fi  
git push origin master

git status