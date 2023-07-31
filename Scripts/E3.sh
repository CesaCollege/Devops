#!/bin/bash

number=$1
calcFunc(){
       local a=`cat ~/.bashrc | wc -l`
       echo $a	
}
funcResult=$(calcFunc)
if [[ $number -gt $funcResult ]]; then
	echo "well done"
else
	echo "try more"
fi
