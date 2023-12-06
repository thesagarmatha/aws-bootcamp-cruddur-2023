#! /bin/bash

find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull


### Add to Path or Alias on Mac:
# Add the following to the end of ~/.zshrc file on mac or ~/.bashrc of Linux. 
#alias gacp='~/Documents/gitrepos/gacp.sh'
#alias gpa='~/Documents/gitrepos/gpa.sh'
# alias gacp='~/Downloads/GIT_PROJECTS/gacp.sh'
# alias gpa='~/Downloads/GIT_PROJECTS/gpa.sh'
