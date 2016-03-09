random_number := 4
guess := nil
tries := 10

while(tries > 0,
  previous_guess := guess
  guess = File standardInput readLine("Guess a random number: ") asNumber

  hint := method(
    previous_score := (random_number - previous_guess) abs
    last_score := (random_number - guess) abs

    if(last_score < previous_score,
       "Hotter" println, if(last_score > previous_score,
          "Cooler" println, "Noooope" println))
  )

  if(random_number == guess,
     "You are a winner!" println; tries = 0,
     if(previous_guess, hint, "Nooope" println))
)
