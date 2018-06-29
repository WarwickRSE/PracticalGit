#!/bin/bash

if [ $# -ne 3 ]
 then
  exit 1
fi

echo $2
newdir=$2"/Test"
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

cp $1"/Tmp/Test/Readme.txt" Readme.txt
git add Readme.txt

cp $1"/Tmp/Test/ShortestPaper."$ext".1" "ShortestPaper."$ext
git add "ShortestPaper."$ext
git commit -a -m 'Initial commit'

git branch bill/cleanup
git branch ben/cleanup

git checkout bill/cleanup

cp $1"/Tmp/Test/ShortestPaper."$ext".1_bill" "ShortestPaper."$ext
git commit "ShortestPaper."$ext -m "Fix Whitespace"

cp $1"/Tmp/Test/ShortestPaper."$ext".2_bill" "ShortestPaper."$ext
git commit "ShortestPaper."$ext -m "Fix types and unnecessary variable"

git checkout ben/cleanup

cp $1"/Tmp/Test/ShortestPaper."$ext".1_ben" "ShortestPaper."$ext
git commit "ShortestPaper."$ext -m "Fix names"

cp $1"/Tmp/Test/ShortestPaper."$ext".2_ben" "ShortestPaper."$ext
git commit "ShortestPaper."$ext -m "Fix stray 'float'"

git checkout master
git log --all --decorate --oneline --graph
