#!/bin/bash
# Clone List of Repos using this script.
# Input is name of text file contatining list of repos.
# List should contain one repo on each line with folder name as first word and url of repo as second word (space seperated).
while read line
do
    username=$(cut -d ' ' -f 1 <<< $line)
    repoLink=$(cut -d ' ' -f 2 <<< $line)
    git clone $repoLink $username
done < $1
