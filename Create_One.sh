#!/bin/bash

if [ $# -ne 3 ]
 then
  exit 1
fi

echo $2
newdir=$2"/One"
mkdir $newdir
if [ $? -ne 0 ]
 then
  exit 1
fi

ext=$3

cd $newdir
git init
if [ $? -ne 0 ]
 then
  exit 1
fi

cp $1"/Tmp/One/eg."$ext".1" "eg."$ext
git add "eg."$ext
git commit "eg."$ext -m 'Initial commit'

git branch feature
git checkout feature
cp $1"/Tmp/One/eg."$ext".3_f" "eg."$ext
git commit "eg."$ext -m 'Add case "D"'

git checkout master
cp $1"/Tmp/One/eg."$ext".2_m" "eg."$ext
git commit "eg."$ext -m 'Add case "E"'

git log --all --decorate --oneline --graph
