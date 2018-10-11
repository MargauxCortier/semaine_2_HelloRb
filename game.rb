guess_this_number = 20

puts "guess number :"
user_guess = gets.chomp.to_i

if guess_this_number == user_guess
	puts "congradulation"
elsif guess_this_number > user_guess
	puts "too low, try again."
else 
	puts "too high, try again."
end