#!/bin/bash

function promptForGuess {
	local guess
	read -p "Your guess: " guess
	if [[ $guess -gt $num_lines ]]
	then
		echo "Your guess is too high!"
		return 0
	elif [[ $guess -lt $num_lines ]]
	then
		echo "Your guess is too low!"
		return 0
	else
		echo "Good Job! You got the correct answer!"
		return 1
	fi
}

num_lines=$(ls | wc -l)

echo "Question: How many files are there in the current directory?"
while [[ $? -eq 0 ]]
do
	promptForGuess
done