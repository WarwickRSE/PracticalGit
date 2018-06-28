#!/bin/bash

if [ $# -ne 3 ]
 then
  exit 1
fi

echo $2
newdir=$2"/Three"
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

cp $1"/Tmp/Three/eg."$ext".1" "eg."$ext
git add "eg."$ext
git commit "eg."$ext -m 'Initial commit'

git branch feature
git checkout feature
cp $1"/Tmp/Three/eg."$ext".2_f" "eg."$ext
git commit "eg."$ext -m 'Add "D" case'

cp $1"/Tmp/Three/eg."$ext".3_f" "eg."$ext
git commit "eg."$ext -m 'Add "E" case'

cp $1"/Tmp/Three/eg."$ext".4_f" "eg."$ext
git commit "eg."$ext -m 'Add "F" case'

git checkout master
cp $1"/Tmp/Three/eg."$ext".5_m" "eg."$ext
git commit "eg."$ext -m 'Add "E" case'

cp $1"/Tmp/Three/eg."$ext".6_m" "eg."$ext
git commit "eg."$ext -m 'Fix whitespace'

git log --all --decorate --oneline --graph
