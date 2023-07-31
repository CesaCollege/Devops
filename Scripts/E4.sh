#!/bin/bash
read num
for ((i = 0 ; i < $num ; i++)); do
	mod3=$(($i%3))
	mod4=$(($i%4))
	if [[ mod3 -eq 0 || mod4 -eq 0 ]]; then
		echo $i	
	fi
done
