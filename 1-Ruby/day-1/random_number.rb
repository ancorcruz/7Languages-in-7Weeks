#!/usr/bin/env ruby

puts "Let's play a game. Guess a number between 0 and 9"

random_number = rand(10)
user_guess = -1

while user_guess != random_number
  print 'Enter your selected number: '
  user_guess = gets.to_i

  puts 'Your choosen number if too high' if user_guess > random_number
  puts 'Your choosen number if too low' if user_guess < random_number
end

puts "Congratulations, You are a winner!"
