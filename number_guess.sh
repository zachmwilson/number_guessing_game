#!/bin/bash


PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
SECRET_NUMBER=$(( $RANDOM % 1000 + 1))
echo "Enter your username:"
read USERNAME

RETURNING_USER=$($PSQL "Select username FROM users WHERE username = '$USERNAME'")

if [[ -z $RETURNING_USER ]]
  then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    INSERTED_USER=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
  else
    GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
    BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."

  fi


  USER_ID=$($PSQL "Select user_id FROM users WHERE username = '$USERNAME'")



    TRIES=0
    GUESS=0

    GUESSING_MACHINE() {
      echo "Guess the secret number between 1 and 1000:"
      read GUESS


      while [[ $GUESS =~ ^[0-9]+$ && $GUESS -ne $SECRET_NUMBER ]]
      do
          TRIES=$(( $TRIES + 1))

            if [[ $GUESS -lt $SECRET_NUMBER ]]
              then
                echo "It's higher than that, guess again:"
                read GUESS
            elif [[ $GUESS -gt $SECRET_NUMBER ]]
              then
                echo "It's lower than that, guess again:"
                read GUESS
            fi
      done

     if [[ $GUESS =~ ^[0-9]+$ && $GUESS -eq $SECRET_NUMBER ]]
     then
        TRIES=$((TRIES + 1))
        echo "You guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
     else
        echo "That is not an integer, guess again:"
        GUESSING_MACHINE
    fi

    }

#echo "Guess the secret number between 1 and 1000:"
GUESSING_MACHINE


INSERTED_GAME=$($PSQL "INSERT INTO games (user_id, guesses) VALUES ($USER_ID, $TRIES)")
