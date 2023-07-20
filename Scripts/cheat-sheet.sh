#!/bin/bash

# -------------------- declare varaible ---------------------- 

myvar="my first variable"
echo $myvar

# --------------------- reading from stdin -----------------
echo "enter a word"
read userinput
printf "user entered \"$userinput\"\n" 


# ------------------------------ arguments------------------

arg=$1
echo $#

echo "first argument is : $arg"

# --------------------------- conditions------------------------

# string conditions 

# empty string
nullstring="nn"
if [[ -z $nullstring ]]; then
echo "string is empty"
else
echo "not empty "
fi

# not empty string
if [[ -n $nullstring ]]; then
echo "not empty"
fi

# equal
str1="hello"
str2=hello
if [[ $str1 == $str2 ]] ; then 
    echo "strings are equal"
elif [[ $str1 == "hello" ]]; then   
    echo "str1 is hello"
fi 

# not equal
if [[ $str1 != $str2 ]] ; then 
    echo "strings are not equal"
else
echo "strings are equal"
fi 

## integer conditions
num1=10
num2=30

# equal 

if [[ $num2 -eq $num1 ]]; then
echo "numbers are equal"
fi

# not equal 

if [[ $num2 -ne $num1 ]]; then
echo "numbers are not equal"
fi

# greater than

if [[ $num2 -gt $num1 ]]; then
echo "num2 is greater than num1"
fi

#greater than or equal
if [[ $num2 -ge $num1 ]]; then
echo "num2 is greater than or equal num1"
fi


# less than
if [[ $num2 -lt $num1 ]]; then
echo "num2 is less than num1"
fi

# less than or equal 
if [[ $num2 -le $num1 ]]; then
echo "num2 is less than or equal num1"
fi

# combinational conditions && ||
if [[ $num2 -gt $num1 && $num1 -eq 10 ]]; then
echo "num2 is greater than num1 and num1 is 10"
fi
