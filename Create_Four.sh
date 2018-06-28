#!/bin/bash

if [ $# -ne 3 ]
 then
  exit 1
fi

echo $2
newdir=$2"/Four"
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

cp $1"/Tmp/Four/eg."$ext".1" "eg."$ext
git add "eg."$ext
git commit "eg."$ext -m 'Initial commit'

git checkout master
cp $1"/Tmp/Four/eg."$ext".2_m" "eg."$ext
git commit "eg."$ext -m 'Add greeting'

git branch feature1
git branch feature2

git checkout feature1
git revert -n HEAD
git commit -m 'Reverted add of greeting'
cp $1"/Tmp/Four/feature.patch."$ext .
git apply "feature.patch."$ext
git commit "eg."$ext -m 'Add "D" case'

git checkout feature2
cp $1"/Tmp/Four/feature2.patch."$ext .
git apply "feature2.patch."$ext
git commit "eg."$ext -m 'Change Greeting'

git checkout master

git log --all --decorate --oneline --graph
