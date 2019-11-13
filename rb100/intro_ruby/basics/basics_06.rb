# Launch School Book: Introduction To Programming With Ruby
# The Basics - Excercise 
# Answered On: 11/09/2019

# INSTRUCTIONS:
# Write a program that calculates the squares of 3 float numbers 
# of your choosing and outputs the result to the screen.

# using a method
def num_squared(num)
  num ** 2
end
      
x_sq_multiply = 2.5 * 2.5
x_sq_exponents = 3.14 ** 2
x_sq_method = num_squared(5.5)

puts "2.5 squared is: #{x_sq_multiply}"
puts "3.14 squared is: #{x_sq_exponents}"
puts "5.5 squared is: #{x_sq_method}"
