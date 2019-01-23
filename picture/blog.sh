#!/bin/bash

imgs=`./qrsctl listprefix blog ''`

i=0 
echo $imgs | tr " " "\n" | while read line
do
    if(($i>0))
    then
        echo $line
        ./qrsctl get blog $line ./picture/$line
    fi
    i=$(($i+1))
done

