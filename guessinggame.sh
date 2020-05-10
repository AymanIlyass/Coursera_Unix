#!/usr/bin/env bash
#Author: Ayman EL Mouss

check () {
	if [[ $1 -lt $2 ]]
	then
		echo "The number you chose is low"
		echo "-----------------------------"
	else
		echo "The number you chose is high"
		echo "-----------------------------"
	fi
}
exactNumber=$(ls -1 | wc -l)
read -p "- How many files are in this directory? " chosenNumber 
while [[ chosenNumber -ne exactNumber ]]
do
	if ! [[ $chosenNumber =~ ^[0-9]+$ ]]
	then
		echo "Try to input a number instead"
	else
		check $chosenNumber $exactNumber
	fi
	read -p "- How many files are in this directory? " chosenNumber
done
echo "Congratulations, your guess was correct, $chosenNumber is the number of files in this directory."
echo "------------------------------------------------------------------------------------------------"
