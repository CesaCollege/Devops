#!/bin/bash
read capacity

# error handling
if [[ -z $capacity ]]; then 
echo "capacity can not be null" >&2
exit 1
fi
check=`echo $capacity | tr -d "0123456789"`
if [[ -n $check ]]; then 
echo "capacity must be an integer" >&2
exit 1
fi
if [[ $capacity -eq 0 ]]; then
    echo "capacity must be greater than 0" >&2
fi
# check for entry
count=`grep -c "HISTSIZE=" ~/.bashrc`

if [[ $count -ne 0 ]]; then 
grep -n "HISTSIZE=" ~/.bashrc | cut -d ":" -f1 | xargs -I N sed Nd -i.backup  ~/.bashrc 
fi
echo "export HISTSIZE=$capacity" >> ~/.bashrc
