
oneValue=0 twoValue=0 threeValue=0 fourValue=0 fiveValue=0 sixValue=0
repeatedValue=0
declare  -A dieDictionary
declare -A everyDieDictionary
while [[ oneValue -lt 10 && twoValue -lt 10 && threeValue -lt 10 && fourValue -lt 10 && fiveValue -lt 10 && sixValue -lt 10 ]]
do
   random=$((RANDOM%6 + 1))
   case $random in
   1) oneValue=$(($oneValue+1))
      dieDictionary[$repeatedValue]=$oneValue
;;
   2) twoValue=$(($twoValue+1))
      dieDictionary[$repeatedValue]=$twoValue
;;
   3) threeValue=$(($threeValue+1))
      dieDictionary[$repeatedValue]=$threeValue
;;
   4) fourValue=$(($fourValue+1))
      dieDictionary[$repeatedValue]=$fourValue
;;
   5) fiveValue=$(($fiveValue+1))
      dieDictionary[$repeatedValue]=$fiveValue
   ;;
   6) sixValue=$(($sixValue+1))
      dieDictionary[$repeatedValue]=$sixValue
;;
   esac

   repeatedValue=$(($repeatedValue+1))
done


	   everyDieDictionary[1]=$oneValue
      everyDieDictionary[2]=$twoValue
      everyDieDictionary[3]=$threeValue
      everyDieDictionary[4]=$fourValue
      everyDieDictionary[5]=$fiveValue
      everyDieDictionary[6]=$sixValue



echo "dictionary  " ${dieDictionary[@]}
echo "dictionary of every die " ${everyDieDictionary[@]}
for i in ${!dieDictionary[@]}
do
   echo "$i  : ${dieDictionary[$i]}"
done | sort -k1 -n

echo "number of times dice rolled "
for d in ${!everyDieDictionary[@]}
do
   echo "$d  : ${everyDieDictionary[$d]}"
done | sort -k1 -n

echo "minimum number of times die rolled "
for d in ${!everyDieDictionary[@]}
do
   echo "$d  : ${everyDieDictionary[$d]}"
done | sort -k3 -n | head -1

echo "maximum number of times die rolled"
for d in ${!everyDieDictionary[@]}
do
   echo "$d  : ${everyDieDictionary[$d]}"
done | sort -k3 -n | tail -1
echo 
