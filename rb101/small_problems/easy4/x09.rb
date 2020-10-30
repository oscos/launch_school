=begin
Launch School: RB101-RB109 - Small Problems - Easy 4
ExerciseName: [Convert a Number to a String!](https://launchschool.com/exercises/cdc65476)
FileName: x06.rb
Answered On: 10/18/2020
=end

=begin
  In the previous two exercises, you developed methods that convert simple numeric 
  strings to signed Integers. In this exercise and the next, you're going to 
  reverse those methods.

  Write a method that takes a positive integer or zero, and converts it to a 
  string representation.

  You may not use any of the standard conversion methods available in Ruby, such 
  as Integer#to_s, String(), Kernel#format, etc. Your method should do this the 
  old-fashioned way and construct the string by analyzing and manipulating the number.
=end

def integer_to_string(number)
  # num_hash = (0..9).zip("0".."9").to_h
  num_hash = {0=>"0", 1=>"1", 2=>"2", 3=>"3", 4=>"4", 5=>"5", 6=>"6", 7=>"7", 8=>"8", 9=>"9"}
  numstr = ''
  counter = 1
  
  loop do 
    current_value = (number % 10**counter) / 10**(counter-1)
    numstr << num_hash[current_value]
    break if number == (number % 10**counter)
    counter += 1
  end
  
  numstr.reverse
  
  # p num = (number % 1000000) / 100000
  # p num = (number % 100000) / 10000
  # p num = (number % 10000) / 1000
  # p num = (number % 1000) / 100
  # p num = (number % 100) / 10
  # p num = (number % 10) / 1
  
end

p integer_to_string(58207) == '58207'
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'