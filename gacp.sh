#! /bin/bash

function addcommitpush () {

current=$(git branch | grep "*" | cut -b 3-)
#message=\'"$@"\'
message="$@"
git add -A && git commit -a -m "$message"
echo "Your commit message is: $message."
#echo "Where to push?"
#read branch

#echo "You sure you wanna push to $branch branch? (y/n)"
#read yn

#if [ "$yn" = y ]; then
#  git push origin "$branch"
#else
#  echo "Have a nice day!"
#fi
git push origin $current

}

addcommitpush $*


### Add to Path or Alias on Mac:
# Add the following to the end of ~/.zshrc file on mac or ~/.bashrc of Linux. 
#alias gacp='~/Documents/gitrepos/gacp.sh'
#alias gpa='~/Documents/gitrepos/gpa.sh'
# alias gacp='~/Downloads/GIT_PROJECTS/gacp.sh'
# alias gpa='~/Downloads/GIT_PROJECTS/gpa.sh'
