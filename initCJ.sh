#!/bin/bash

if [ -z "$1" ]; then
  echo "What are you calling this"
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
cat "bash-pipe/testEnvironmentHeader.py" >> "$TITLE.py"
echo "" >> "$TITLE.py"
cat "$TITLE.py"
cat >> "$TITLE.py"

chmod +x "$TITLE.py"

mkdir "cases/cases-$TITLE"


git add .

git status