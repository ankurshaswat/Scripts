#!/bin/bash
START=1
END=$2

g++ $1

for (( c=$START; c<=$END; c++ ))
do
	echo "Input $c"
    echo ""
    ./a.out < "inp$c" 
    echo ""
done