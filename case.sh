#!/bin/bash

if [ -z "$1" ]; then
  echo "What problem are you adding this case to?"
  read TITLE
else
  TITLE="$1"
fi

d=date
f=+'%y%m%d'
da=$($d $f)
echo "$TITLE.py"
echo "Enter code stub below:"
echo "#!/Users/anthonyquivers/anaconda3/bin/python" > "$TITLE.py"
echo "#Date Started: $da" >> "$TITLE.py"
echo "" >> "$TITLE.py"
cat "$TITLE.py"
cat >> "$TITLE.py"

chmod +x "$TITLE.py"


git add .
git commit -a -m "Problem Started"
git push origin master

git status