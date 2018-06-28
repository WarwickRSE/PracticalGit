#!/bin/bash

echo $1
newdir=$1"/Two"
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

cp ../Tmp/Two/eg.f90.1 eg.f90
git add eg.f90
git commit eg.f90 -m 'Initial commit'

git branch feature
git checkout feature
cp ../Tmp/Two/eg.f90.2_f eg.f90
git commit eg.f90 -m 'Add greeting'

git checkout master
cp ../Tmp/Two/eg.f90.3_m eg.f90
git commit eg.f90 -m 'Add greeting'

git log --all --decorate --oneline --graph
