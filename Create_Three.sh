#!/bin/bash

echo $1
newdir=$1"/Three"
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

cp ../Tmp/Three/eg.f90.1 eg.f90
git add eg.f90
git commit eg.f90 -m 'Initial commit'

git branch feature
git checkout feature
cp ../Tmp/Three/eg.f90.2_f eg.f90
git commit eg.f90 -m 'Add "D" case'

cp ../Tmp/Three/eg.f90.3_f eg.f90
git commit eg.f90 -m 'Add "E" case'

cp ../Tmp/Three/eg.f90.4_f eg.f90
git commit eg.f90 -m 'Add "F" case'

git checkout master
cp ../Tmp/Three/eg.f90.5_m eg.f90
git commit eg.f90 -m 'Add "E" case'

cp ../Tmp/Three/eg.f90.6_m eg.f90
git commit eg.f90 -m 'Fix whitespace'

git log --all --decorate --oneline --graph
