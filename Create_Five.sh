#!/bin/bash

echo $1
newdir=$1"/Five"
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

cp ../Tmp/Five/eg.f90.1 eg.f90
git add eg.f90
git commit eg.f90 -m 'Initial commit'

git checkout master
cp ../Tmp/Five/eg.f90.2_m eg.f90
git commit eg.f90 -m 'Add greeting'

git branch feature

#Ongoing changes on Master

cp ../Tmp/Five/master*.patch .
git apply master1.patch
git commit eg.f90 -m 'Add silent conversion'

git apply master2.patch
git commit eg.f90 -m 'Add encodings'

#git apply master3.patch
#git commit eg.f90 -m 'Fix whitespace'

git apply master4.patch
git commit eg.f90 -m 'Use silent for convert'


#Our changes on feature
git checkout feature
cp ../Tmp/Five/feature1.patch .
git apply feature1.patch
git commit eg.f90 -m 'Add tests'

cp ../Tmp/Five/feature2.patch .
git apply feature2.patch
git commit eg.f90 -m 'Add "D" case'

git checkout master

git log --all --decorate --oneline --graph
