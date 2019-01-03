#!/bin/bash
while read line
do
    username=$(cut -d ' ' -f 1 <<< $line)
    repoLink=$(cut -d ' ' -f 2 <<< $line)
    git clone $repoLink $username
done < $1