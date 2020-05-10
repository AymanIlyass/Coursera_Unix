#!/usr/bin/env bash
#Author: Ayman EL Mouss


#This function checks if the chosen number was true"
check () {
	if [[ $1 -lt $2 ]]; then
		echo "The number you chose is low"
		echo "-----------------------------"
	else
		echo "The number you chose is high"
		echo "-----------------------------"
	fi
}

exactNumber=3

echo "- How many files there is in this directory?"
read chosenNumber

while [[ chosenNumber -ne exactNumber ]]; do
	check chosenNumber exactNumber
	echo "- How many files there is in this directory?"
	read chosenNumber
done

echo "Congratulations, your guess was correct, $chosenNumber is the number of file in this directory"
