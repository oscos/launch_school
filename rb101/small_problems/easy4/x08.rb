=begin
Launch School: RB101-RB109 - Small Problems - Easy 4
ExerciseName: [Convert a String to a Signed Number!](https://launchschool.com/exercises/52e5f20f)
FileName: x08.rb
Answered On: 10/19/2020
Updated On: 03/22/2021
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

def string_to_integer(str)
  # num_hash = ("0".."9").zip(0..9).to_h
  num_hash = {"0"=>0, "1"=>1, "2"=>2, "3"=>3, "4"=>4, "5"=>5, "6"=>6, "7"=>7, "8"=>8, "9"=>9}
  number = 0

  str.reverse.each_char.with_index do |v, index|
    number += num_hash[v] * 10 ** index
    index += 1
  end
  
  number
end
# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570


def string_to_signed_integer(str)
  num = string_to_integer(str.gsub(/[+-]/,""))
  str.include?("-") ? -num : num
end

# new solution 02/22/2021
def string_to_signed_integer(str)
  str.include?('-') ? sign = -1 : sign = 1
  clean_str = str.gsub(/[-+]/,'')
  string_to_integer(clean_str) * sign
end

# new solution added 03/22/2021
def string_to_signed_integer(input_str)
  sign = input_str.start_with?("-") ? -1 : 1
  str = input_str.gsub(/[+-]/,'')
  string_to_integer(str) * sign
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
