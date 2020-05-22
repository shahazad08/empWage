declare -A personDict
one=0 two=0 three=0 four=0 five=0 six=0 seven=0 eight=0 nine=0 ten=0 eleven=0 tweleve=0

for((i=1;i<=50;i++))
do
	randomYear=$((RANDOM%2))
	randomMonth=$((RANDOM%12 + 1))
	if [ $randomYear -eq 0 ]
	then
		randomYear=92
	else
		rendomYear=93
	fi

	personDict["person_$i"]=$randomMonth
done
echo ${personDict[@]}


for i in ${!personDict[@]}
do
   echo "$i  : ${personDict[$i]}"
done | sort -k3 -n

echo "persons having same month"
for j in ${!personDict[@]}
do
	case ${personDict[$j]} in
		1)one=$(($one+1))
			 echo "$j : ${personDict[$j]}";;
		2) two=$(($two+1))
			 echo "$j : ${personDict[$j]}";;
		3)three=$(($three+1))
			 echo "$j : ${personDict[$j]}";;
		4) four=$(($four+1))
			echo "$j : ${personDict[$j]}";;
		5)five=$(($five+1))
			 echo "$j : ${personDict[$j]}";;
		6)six=$(($six+1))
			 echo "$j : ${personDict[$j]}";;
		7)seven=$(($seven+1))
			 echo "$j : ${personDict[$j]}";;
		8)eight=$(($eight+1))
			 echo "$j : ${personDict[$j]}";;
		9)nine=$(($nuine+1))
			 echo "$j : ${personDict[$j]}";;
		10)ten=$(($ten+1))
			 echo "$j : ${personDict[$j]}";;
		11)eleven=$(($eleven+1))
			echo "$j : ${personDict[$j]}";;
		12)tweleve=$(($tweleve+1))
			echo "$j : ${personDict[$j]}";;
	esac
done

echo "number of person"
echo "Month_1 : $one"
echo "Month_2 : $two"
echo "Month_3 : $three"
echo "Month_4 : $four"
echo "Month_5 : $five"
echo "Month_6 : $six"
echo "Month_7 : $seven"
echo "Month_8 : $eight"
echo "Month_9 : $nine"
echo "Month_10 : $ten"
echo "Month_11 : $eleven"
echo "Month_12 : $tweleve"
