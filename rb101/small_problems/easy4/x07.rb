=begin
Launch School: RB101-RB109 - Small Problems - Easy 4
ExerciseName: [Convert a String to a Number!](https://launchschool.com/exercises/192719a5)
FileName: x07.rb
Answered On: 10/19/2020
Updated On: 02/19/2021
=end

=begin
  The String#to_i method converts a string of numeric characters (including an
  optional plus or minus sign) to an Integer. String#to_i and the Integer constructor 
  (Integer()) behave similarly. In this exercise, you will create a method that 
  does the same thing.

  Write a method that takes a String of digits, and returns the appropriate 
  number as an integer. You may not use any of the methods mentioned above.

  For now, do not worry about leading + or - signs, nor should you worry about 
  invalid characters; assume all characters will be numeric.

  You may not use any of the standard conversion methods available in Ruby, 
  such as String#to_i, Integer(), etc. Your method should do this the 
  old-fashioned way and calculate the result by analyzing the characters in 
  the string.
=end

# REFACTORED ANSWER
def string_to_integer(str)

  num_hash = ("0".."9").zip(0..9).to_h
  number = 0

  str.reverse.each_char.with_index do |v, index|
    number += num_hash[v] * 10 ** index
    index += 1
  end
  
  number
end

# ORIGINAL ANSWER
# def string_to_integer(str)

#   num_hash = {"0"=>0, "1"=>1, "2"=>2, "3"=>3, "4"=>4, "5"=>5, "6"=>6, "7"=>7, "8"=>8, "9"=>9}
#   number = 0
#   counter = 0

#   loop do 
#     break if counter == str.size
#       current_value = str.reverse[counter]
#       number += num_hash[current_value] * 10 ** counter
#     counter += 1
#   end
#   number
# end

# New Solution Added 02/19/2021
def string_to_integer(string)
  h = ('0'..'9').to_a.zip((0..9).to_a ).to_h
  str = string
  counter = -1
  power = 0
  result = []

  loop do 
    current_element = h.fetch(str[counter])
    result << (current_element * (10**power))
    break if counter == -(str.size)  
    counter -= 1
    power += 1
  end

  result.sum
end

# Refactored Solution 02/21/2021
def string_to_integer(str)
  h = ('0'..'9').zip(0..9).to_h
  arr = str.chars.reverse
  arr.map.with_index do |v, idx|
    h[v] * (10**idx)
  end.sum
end

p string_to_integer('92378') == 92378
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570