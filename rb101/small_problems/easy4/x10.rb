=begin
Launch School: RB101-RB109 - Small Problems - Easy 4
ExerciseName: [Convert a Number to a String!](https://launchschool.com/exercises/cdc65476)
FileName: x10.rb
Answered On: 10/19/2020
=end

=begin
  In the previous exercise, you developed a method that converts non-negative 
  numbers to strings. In this exercise, you're going to extend that method by 
  adding the ability to represent negative numbers as well.
  
  Write a method that takes an integer, and converts it to a string representation.
  
  You may not use any of the standard conversion methods available in Ruby, such 
  as Integer#to_s, String(), Kernel#format, etc. You may, however, use 
  integer_to_string from the previous exercise.
=end

NUMBERS_HASH = (0..9).zip("0".."9").to_h

def integer_to_string(number)
  str = ''
  counter = 0
  loop do
    break if counter == 5      
    digits,digit = number.divmod(10)
    p digit
      str << digit
    counter += 1
  end
  p str
end

integer_to_string(58207)

# p integer_to_string(58207) == '58207'
# p integer_to_string(4321) == '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(5000) == '5000'