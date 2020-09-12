=begin
Launch School Book: Ruby Basics - Exercises
ExerciseName: [Dividing Numbers](https://launchschool.com/exercises/e740a355)
FileName: ex08.md
Answered On: 06/13/2020
Updated On: 09/08/2020
=end

# solution 2:
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

loop do
    puts(">> Please enter the numerator:")
    numerator = gets.chomp
    puts(">> Please enter the denominator:")
    denominator = gets.chomp

    if !(valid_number?(numerator) && valid_number?(denominator)) # !(False && False) => True
      puts(">> Invalid input. Only integers are allowed.")
      next
    elsif (denominator.to_i == 0)
      puts(">> Invalid input. A denominator of 0 is not allowed.")
      next
    else
      result = (numerator.to_i / denominator.to_i)
      puts(">> #{numerator} / #{denominator} is #{result}")
      break
    end
end


# solution 1:
# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# numerator = nil
# denominator = nil
# result =  nil

# loop do
#   puts ">> Please enter the numerator:"
#   numerator = gets.chomp  
  
#   if valid_number?(numerator)
#     break
#   else
#     puts ">> Invalid input. Only integers are allowed."
#   end
# end

# loop do
#   puts ">> Please enter the denominator:"
#   denominator = gets.chomp
  
#   if !valid_number?(denominator)
#     puts ">> Invalid input. Only integers are allowed."
#   elsif denominator == '0' 
#     puts ">> Invalid input. A denominator of 0 is not allowed."
#   else
#     break
#   end 
  
# end

# # puts "Success!"
# result = numerator.to_i / denominator.to_i

# puts "#{numerator} / #{denominator} is #{result}"

