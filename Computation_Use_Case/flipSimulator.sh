echo "Welcome to Filp coin simulator"

declare -A flipCoinCombination

function getFlipCoin(){

	numberOfCoins=$1
	combination=""

	for((i=1;i<=$numberOfFlip;i++))
	do
		for((j=1;j<=$numberOfCoins;j++))
		do
			flipFace=$((RANDOM % 2))

			if [ $flipFace -eq 1 ]
			then
				combination=$combination"H"
			else
				combination=$combination"T"
			fi
		done

		flipCoinCombination[$combination]=$(( ${flipCoinCombination[$combination]} + 1 ))
		combination=""
	done

	getWinningCombination
}

function getWinningCombination(){

	for key in ${!flipCoinCombination[@]}
	do
		value=${flipCoinCombination[$key]}
		echo " $key $((( $value * 100 ) / $numberOfFlip ))%"
	done | sort -k2 -nr | awk 'NR==1{print $1"		" $2}' 
}

function main(){

	read -p "Enter number of time you would like to flip" numberOfFlip

	while true
	do
		echo -e "Enter choice \n 1)Singlet \n 2)Doublet \n 3)Triplet"

		read choice

		case $choice in
			1 ) getFlipCoin 1
			break ;;

			2 ) getFlipCoin 2
			break ;;

			3 ) getFlipCoin 3
			break ;;

			* ) echo "Invalid input" 
		esac

	done
}

main
