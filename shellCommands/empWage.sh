
#!/bin/bash -x
echo "Welcome to employee Wage computation Program"
isPresent=$(( RANDOM % 2 ))
if [ $isPresent -eq 1 ]
then
	echo "present"
elif [ $isPresent -eq 0 ]
then
	echo "Absent"
fi
