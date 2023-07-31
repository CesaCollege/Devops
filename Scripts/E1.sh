#!/bin/bash
# user enters a number as an argument and a csv line ( hello,from,github ) 
# the result should be corresponding field mentioned as an argument
number=$1
printf "give me a csv line\n"
read csvline
ans=`echo $csvline | cut -d "," -f $number`
echo $ans
