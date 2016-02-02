rando = rand(1..100)
puts "The number chosen by the computer is #{rando}"

# def is_guess_greater?(guess)
#   return guess > rando
# end
#
# def is_guess_less?(guess)
#   return guess < rando
# end

count = 4
puts "Please guess a number"
user_guess = gets.chomp
until count == 0 || user_guess == rando
  if user_guess.to_i > rando
  #if is_guess_greater?(user_guess)
    puts "Sorry, too high"
    count -= 1
    user_guess = gets.chomp
  elsif user_guess.to_i < rando
  #elsif is_guess_less?(user_guess)
    puts "Sorry, too low"
    count -= 1
    user_guess = gets.chomp
  else
    puts "Great guess!"
  end
end
