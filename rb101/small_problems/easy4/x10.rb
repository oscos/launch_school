=begin
Launch School: RB101-RB109 - Small Problems - Easy 4
ExerciseName: [Convert a Number to a String!](https://launchschool.com/exercises/cdc65476)
FileName: x10.rb
Answered On: 10/19/2020
Updated On: 02/24/2021
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

#METHOD ONLY WORKS WITH POSITIVE NUMBER OR 0
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
end
# p integer_to_string(987605) 
# p integer_to_string(987605) = '987605'
# p integer_to_string(4321) == '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(5000) == '5000'

# Solution 1
def signed_integer_to_string(number)
  # using ternary:
  #return "0" if number == 0
  # number < 0 ? integer_to_string(number * -1).prepend("-") : integer_to_string(number).prepend("+")
  
  if number == 0 then integer_to_string(number)
  elsif number < 0 then integer_to_string(number * -1).prepend("-")
  elsif number > 0 then integer_to_string(number).prepend("+")
  end
end

# Solution 2 
def signed_integer_to_string(num)
  sign = 
    case 
    when num < 0 then '-'
    when num > 0 then '+'
    else '' 
    end
  sign.concat(integer_to_string(num.abs))
end

# p signed_integer_to_string(-987605)
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'