
#!/bin/bash -x
echo "Welcome to employee Wage computation Program"
EMP_WAGE_PER_HR = 20
EMP_WAGE_RATE  = 8
isPresent=$(( RANDOM % 2 ))
if [ $isPresent -eq 1 ]
then
	echo "present"
elif [ $isPresent -eq 0 ]
then
	echo "Absent"
fi

# Function to add new calculate wage prob UC2

