=begin
Launch School Book: Ruby Basics - Exercises
ExerciseName: [Opposites Attract](https://launchschool.com/exercises/84929d91)
FileName: ex10.md
Answered On: 06/14/2020
=end

# Solution #1 (Answered On: 06/14/2020):
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end


loop do 
  puts(">> Please enter a positive or negative integer:")
  num1 = gets.chomp
  
  puts(">> Please enter a positive or negative integer:")
  num2 = gets.chomp

  if !(valid_number?(num1) && valid_number?(num2))
    puts(">> Invalid input. Only non-zero integers are allowed.")
  elsif (num1.to_i * num2.to_i > 0)
    puts(">> Sorry. One integer must be positive, one must be negative.")
    puts(">> Please start over.")
  else
    result = num1.to_i + num2.to_i
  	puts "#{num1} + #{num2} = #{result}"
  	break
  end        
end

=begin
Solution #1 (Answered On: 06/14/2020):
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
=end