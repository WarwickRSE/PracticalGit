#!/bin/bash

echo $1
newdir=$1"/Test"
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

cp ../Tmp/Test/ShortestPaper.f90.1 ShortestPaper.f90
git add ShortestPaper.f90
git commit ShortestPaper.f90 -m 'Initial commit'

git branch bill/cleanup
git branch ben/cleanup

git checkout bill/cleanup

cp ../Tmp/Test/ShortestPaper.f90.1_bill ShortestPaper.f90
git commit ShortestPaper.f90 -m "Fix Whitespace"

cp ../Tmp/Test/ShortestPaper.f90.2_bill ShortestPaper.f90
git commit ShortestPaper.f90 -m "Fix kinds and unnecessary variable"

git checkout ben/cleanup

cp ../Tmp/Test/ShortestPaper.f90.1_ben ShortestPaper.f90
git commit ShortestPaper.f90 -m "Fix name collisions with builtins"

cp ../Tmp/Test/ShortestPaper.f90.2_ben ShortestPaper.f90
git commit ShortestPaper.f90 -m "Fix stray 'float'"

git checkout master
git log --all --decorate --oneline --graph
