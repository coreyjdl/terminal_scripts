#!/bin/zsh

if ls -1 /Users/Corey/Desktop/ | grep "Screen.*"
  then
    for file in ~/Desktop/Screen*
      do
        if [ $(expr $(date "+%s") -  $(date -r $file "+%s")) -gt 86400 ]
         then
           rm $file
         fi
      done
fi

