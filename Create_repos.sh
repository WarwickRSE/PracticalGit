#!/bin/bash

#Rather than trying to juggle git and resets and stuff, this
#script will create the relevant repos, copy files into place and
#create the commits. This way we can always be sure we're working from
#the same start

docstr="Usage: Run this script from parent directory of cloned repo, into which the example dirs will be put"

scrp_dir=`dirname $0`"/"
ls $scrp_dir"Create_repos.sh" &> /dev/null
if [ $? -ne 0 ]
 then
  echo "Could not find scripts "$docstr
  exit 1
fi

githead=`git rev-parse --verify HEAD &>/dev/null`
if [ $? -eq 0 ]
 then
  echo "Cannot create repos inside exisiting repo "$docstr
  exit 1
fi

echo "Creating repositories"
errs=0
wkdir=`pwd`

$scrp_dir"Create_One.sh" $wkdir
if [ $? -ne 0 ]
  then
   echo "Error creating One"
   let "errs++"
else
  echo ' ****************** Created One'
fi

$scrp_dir"Create_Two.sh" $wkdir
if [ $? -ne 0 ]
  then
   echo "Error creating Two"
   let "errs++"
else
  echo ' ****************** Created Two'
fi

$scrp_dir"Create_Three.sh" $wkdir
if [ $? -ne 0 ]
  then
   echo "Error creating Three"
   let "errs++"
else
  echo ' ****************** Created Three'
fi

$scrp_dir"Create_Four.sh" $wkdir
if [ $? -ne 0 ]
  then
   echo "Error creating Four"
   let "errs++"
else
  echo ' ****************** Created Four'
fi

$scrp_dir"Create_Five.sh" $wkdir
if [ $? -ne 0 ]
  then
   echo "Error creating Five"
   let "errs++"
else
  echo ' ****************** Created Five'
fi

$scrp_dir"Create_Test.sh" $wkdir
if [ $? -ne 0 ]
  then
   echo "Error creating Test"
   let "errs++"
else
  echo ' ****************** Created Test'
fi

echo $errs " errors"
