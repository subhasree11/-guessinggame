echo "Welcome to Guessing game"

function guess {
	echo "Guess number of files in the current directory:"
	read t
    files=$(ls -1 | wc -l)
}

guess

while [[ $t -ne $files ]]
do
	if [[ $t -lt $files ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	guess
done

echo "Congrats.Your guess is correct.The no of file in director are $t"