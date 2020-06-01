#!/bin/bash -x
declare -A resultSet
counter=0

read -p "Enter value of a:" a
read -p "Enter value of b:" b
read -p "Enter value of c:" c

resultSet["Opration1"]=$(( $a + $b * $c))
resultSet["Opration2"]=$(( $a * $b + $c))
resultSet["Opration3"]=$(( $c + $a / $b))
resultSet["Opration4"]=$(( $a % $b + $c))

for result in ${!resultSet[@]}
do
	array[((counter++))]=${resultSet[$result]}
	echo $counter
done

echo $(printf "%d\n" ${array[@]} | sort -n ) #Acs sort
echo $(printf "%d\n" ${array[@]} | sort -nr ) #desc sor
echo "result Value":  ${resultSet[@]}

