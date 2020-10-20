=begin
Launch School: RB101-RB109 - Small Problems - Easy 4
ExerciseName: [Convert a String to a Signed Number!](https://launchschool.com/exercises/52e5f20f)
FileName: x08.rb
Answered On: 10/19/2020
=end

=begin
  In the previous exercise, you developed a method that converts simple numeric 
  strings to Integers. In this exercise, you're going to extend that method to 
  work with signed numbers.

  Write a method that takes a String of digits, and returns the appropriate number 
  as an integer. The String may have a leading + or - sign; if the first character 
  is a +, your method should return a positive number; if it is a -, your method 
  should return a negative number. If no sign is given, you should return a 
  positive number.

  You may assume the string will always contain a valid number.

  You may not use any of the standard conversion methods available in Ruby, 
  such as String#to_i, Integer(), etc. You may, however, use the string_to_integer 
  method from the previous lesson.
=end

NUMBERS_HASH = ("0".."9").zip(0..9).to_h


def string_to_integer(string)
  strnum_arr =
    string.chars.map do |v|
      NUMBERS_HASH[v]
    end  

  runsum = 0
  strnum_arr.each do |v|
      runsum = runsum * 10 + v
  end
  runsum
end

def string_to_signed_integer(string)
  if string.include?("-")
    string = string.sub("-","")
    num = string_to_integer(string)
    num = num * -1
  elsif string.include?("+")
    string = string.sub("+","")
    num = string_to_integer(string)
  else
    num = string_to_integer(string)
  end
end


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100


# # string_to_integer('92378')
# p string_to_integer('92378') == 92378
# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570