# ex10.md
# Opposites Attract

# Write a program that requests two integers from the user, adds them together, 
# and then displays the result. Furthermore, insist that one of the integers be 
# positive, and one negative; however, the order in which the two integers are 
# entered does not matter.

# Do not check for the positive/negative requirement until both integers are 
# entered, and start over if the requirement is not met.

# You may use the following method to validate input integers:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do

	puts ">> Please enter a positive or negative integer:"
	num1 = gets.chomp
	
	puts ">> Please enter a positive or negative integer:"
	num2 = gets.chomp

	if (num1.to_i * num2.to_i) > 0
		puts ">> Sorry. One integer must be positive, one must be negative? "
		puts ">>Please start over!"
	elsif (valid_number?(num1) && valid_number?(num2))
		result = num1.to_i + num2.to_i
		puts "#{num1} + #{num2} = #{result}"
		break
	else  
		puts ">> Invalid input. Only non-zero integers are allowed."
	end	

end 