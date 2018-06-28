#!/bin/bash

echo $1
newdir=$1"/One"
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

cp ../Tmp/One/eg.f90.1 eg.f90
git add eg.f90
git commit eg.f90 -m 'Initial commit'

git branch feature
git checkout feature
cp ../Tmp/One/eg.f90.3_f eg.f90
git commit eg.f90 -m 'Add case "D"'

git checkout master
cp ../Tmp/One/eg.f90.2_m eg.f90
git commit eg.f90 -m 'Add case "E"'

git log --all --decorate --oneline --graph
