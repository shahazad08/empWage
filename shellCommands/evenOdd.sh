#!/bin/bash -x

NUMS="1 2 3 4 5 6 7 8 9 10"
for NUM in $NUMS
do
	Q=`expr $NUM % 2`
	if [ $Q -eq 0 ]
	then
		echo "Number is an even Number!!"
		continue
	fi
	echo "Odd Number"
done
