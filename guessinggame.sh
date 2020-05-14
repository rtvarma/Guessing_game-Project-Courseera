real_value=$(ls -1 | wc -l)

function guessing_game_function {        
    if [[ $1 -lt $2 ]]          
		then
		echo "The actual number of files are more than guessed , try again !!"
	fi
    if [[ $1 -gt $2 ]]
		then
		echo "The actual number of files are less than guessed , try again !!"
	fi
    if [[ $1 -eq $2 ]] 
		then
		echo "Congragulations! your guess is right "
    fi
}
echo "Welcome to the Guessing game"
while [[ $real_value -ne $read_guess ]]    # One loop...
do
    read -p "Guess how many files are in the current directory? " read_guess
    # Reading the guess
    echo $(guessing_game_function $read_guess $real_value)
    echo ""
done