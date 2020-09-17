=begin
Launch School: RB101-RB109 - Small Problems - Easy 1 - Stringy Strings
ExerciseName: [Stringy Strings](https://launchschool.com/exercises/f37a9e56)
FileName: ex07.md
Answered On: 09/16/2020
=end

# Write a method that takes one argument, a positive integer, and returns a string 
# of alternating 1s and 0s, always starting with 1. The length of the string should 
# match the given integer.

# require 'pry'

# Solution #1
# def stringy(int)
#   arr_digits = (1..int).to_a
#   arr10 = []
#   arr_digits.each do |num|
#     num % 2 == 1 ? arr10 << 1 : arr10 << 0
#   end
#   arr10.join
# end

# Solution #2
def stringy(int)
  arr_digits = (1..int).to_a
  
  arr10 = 
  arr_digits.map do |num|
    num.odd? ? 1 : 0
  end
  arr10.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'