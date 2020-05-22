#/!/bin/bash -x

flag=0
declare -A dice
while [[ $flag -le 0 ]]
do
        random=$(( 1 + RANDOM %6))
   dice[$random]=$(( "${dice[$random]}" + 1 ))
   rs="${dice[$random]}"
   if [ $rs -gt 9 ]
   then
      flag=$(($flag +1))
                echo "Die $random"
   fi
done
echo ${dice[@]}


