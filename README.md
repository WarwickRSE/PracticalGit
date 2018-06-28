# PracticalGit
Scripts to create exercises for git practice

## How to use this

We can't have repositories within repositories (except as submodules which we wont go into here). So these scripts create a series of directories parallel to this repository itself. That is, the PracticalGit repo. and all the folders it creates, One, Two etc should all be children of some directory

To set this up:

`mkdir GitExercises`

`cd GitExercises`

`git clone https://github.com/WarwickRSE/PracticalGit.git`

`./PracticalGit/Create_repos.sh`

`cp ./PracticalGit/Exercises.pdf .`

You should now see directories called One, Two etc each of which is it's own git repo. You can now work through the Exercises.pdf
