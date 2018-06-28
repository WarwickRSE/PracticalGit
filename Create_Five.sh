#!/bin/bash

if [ $# -ne 3 ]
 then
  exit 1
fi

echo $2
newdir=$2"/Five"
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

cp $1"/Tmp/Five/eg."$ext".1" "eg."$ext
git add "eg."$ext
git commit "eg."$ext -m 'Initial commit'

cp $1"/Tmp/Five/eg."$ext".2_m" "eg."$ext
git commit "eg."$ext -m 'Add greeting'

git branch feature

#Ongoing changes on Master

cp $1"/Tmp/Five/master"*".patch."$ext .

git apply "master1.patch."$ext
git commit "eg."$ext -m 'Add silent conversion'

git apply "master2.patch."$ext
git commit "eg."$ext -m 'Add encodings'

#git apply "master3.patch."$ext
#git commit "eg."$ext -m 'Fix whitespace'

git apply "master4.patch."$ext
git commit "eg."$ext -m 'Use silent for convert'


#Our changes on feature
git checkout feature
cp $1"/Tmp/Five/feature1.patch."$ext .
git apply "feature1.patch."$ext
git commit "eg."$ext -m 'Add tests'

cp $1"/Tmp/Five/feature2.patch."$ext .
git apply "feature2.patch."$ext
git commit "eg."$ext -m 'Add "D" case'

git checkout master

git log --all --decorate --oneline --graph
