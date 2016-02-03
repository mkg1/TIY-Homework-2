def generate_number
  big_array = (1..100).to_a
  return big_array.sample
end

def out_of_range(guess)
  if guess < 0 || guess > 100
    return true
  end
end

def letters(guess)
  return !(guess.to_i.to_s == guess || guess.to_f.to_s == guess)
end

# def already_guessed_low(array, guess)
#   array.each do |x|
#     if guess < x + 1
#       return true
#     end
#   end
# end

def already_guessed_low(array, guess)
   array.each do |x|
    array.index?(x<guess)
    return true
  end
end

guesses = []
random = generate_number
puts "Random number: #{random}"
count = 0
number_of_guesses = 5

puts "Please guess a number"

while count <= number_of_guesses
  original_input = gets.chomp
  user_guess = original_input.to_i
  count += 1
  if user_guess == random
    puts "NICE!"
    break
  elsif out_of_range(user_guess)
    puts "Whoah now...can I get a number between 1 and 100 please?"
  elsif letters(original_input)
    puts "AHHHHHH NUMBERS PLEASE!"
  elsif count >=  number_of_guesses
    puts "You lose!! Too many guesses!"
    puts "#{guesses}"
    break
  elsif guesses.include?(user_guess)
    puts "Durrr you already guessed that! Another number please!"
  elsif already_guessed_low(guesses, user_guess)
    puts "Silly user - you just wasted a guess. I already indicated that a number above your current guess was too low! Another number please!"
  elsif user_guess < random
    puts "Please guess again - too low! Guess again"
    guesses << user_guess
  elsif user_guess > random
    puts "Please guess again - too high! Guess again"
    guesses << user_guess
  end
end
