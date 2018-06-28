#!/bin/bash

echo $1
newdir=$1"/Four"
mkdir $newdir
if [ $? -ne 0 ]
 then
  exit 1
fi

cd $newdir

git init
if [ $? -ne 0 ]
 then
  exit 1
fi

cp ../Tmp/Four/eg.f90.1 eg.f90
git add eg.f90
git commit eg.f90 -m 'Initial commit'

git checkout master
cp ../Tmp/Four/eg.f90.2_m eg.f90
git commit eg.f90 -m 'Add greeting'

git branch feature1
git branch feature2

git checkout feature1
git revert -n HEAD
git commit -m 'Reverted add of greeting'
cp ../Tmp/Four/feature.patch .
git apply feature.patch
git commit eg.f90 -m 'Add "D" case'

git checkout feature2
cp ../Tmp/Four/feature2.patch .
git apply feature2.patch
git commit eg.f90 -m 'Change Greeting'

git checkout master

git log --all --decorate --oneline --graph
