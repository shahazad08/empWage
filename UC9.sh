echo "Welcome to employee Wage computation Program"

declare -A dailyWage
declare -A totalWage
WAGE_PER_HOURS=20
FULL_DAY_WORKING_HOURS=8
HALF_DAY_WORKING_HOURS=4
FULL_DAY=2
HALF_DAY=1
TOTAL_WORKING_HOURS=100
WORKING_DAY_IN_MONTH=20
presentHours=0
day=1

function getWorkHours(){

	local isPresent=$1
	case $isPresent in
		$FULL_DAY) 
			echo $FULL_DAY_WORKING_HOURS;;

		$HALF_DAY)
			echo $HALF_DAY_WORKING_HOURS;;

		*)echo 0;;
	esac
}

while [ $day -le $WORKING_DAY_IN_MONTH ] && [ $presentHours -lt $TOTAL_WORKING_HOURS ]
do
	isPresent=$(( RANDOM % 3 ))
	dailyHours="$( getWorkHours $isPresent )"
	dailyWage["Day $day"]=$(( $WAGE_PER_HOURS * $dailyHours ))
	presentHours=$(( $presentHours + $dailyHours ))
	totalWage["Day $day"]=$(( $presentHours * $WAGE_PER_HOURS ))
	((day++))

done

	 echo "Day No.     DailyWage    	TotalWage"

for((i=1;i<day;i++))
do

	echo "Day $i		${dailyWage[Day $i]}		${totalWage[Day $i]}"

done
