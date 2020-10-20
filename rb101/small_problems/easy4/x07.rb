=begin
Launch School: RB101-RB109 - Small Problems - Easy 4
ExerciseName: [Convert a String to a Number!](https://launchschool.com/exercises/192719a5)
FileName: x07.rb
Answered On: 10/19/2020
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

NUMBERS_HASH = ("0".."9").zip(0..9).to_h 

def string_to_integer(string)
  str_arr =  string.chars
  
  num_arr = 
    str_arr.map do |v|
      NUMBERS_HASH[v]
    end

  my_int = 0
  
  num_arr.each do |number|
    my_int =my_int * 10 + number  # This line adopted from LS Solution
  end
  
  my_int
  
end

p string_to_integer('92378') == 92378
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570