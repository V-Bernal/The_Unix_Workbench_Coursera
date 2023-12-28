#!/bin/bash

function guessing_game() {
  correct_files=$(ls -l | grep "^-" | wc -l)

  while true; do
    echo "Guess how many files are in the current directory:"
    read user_guess

    if [ $user_guess -lt $correct_files ]; then
      echo "Your guess is too low. Try again."
    elif [ $user_guess -gt $correct_files ]; then
      echo "Your guess is too high. Try again."
    else
      echo "Congratulations! Your guess is correct."
      break
    fi
  done
}

guessing_game
