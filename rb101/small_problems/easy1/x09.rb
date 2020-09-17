=begin
Launch School: RB101-RB109 - Small Problems - Easy 1 - Array Average
ExerciseName: [Array Average](https://launchschool.com/exercises/5b9a3e04)
FileName: ex08.md
Answered On: 09/16/2020
=end

# Write a method that takes one argument, a positive integer, and returns the sum 
# of its digits.

# require 'pry'

def sum(int)
  
  # # Solution #1
  arr_num = int.digits
  arr_num.sum
  # # binding.pry
  
  # Solution #2
  # arr_num = int.to_s.chars
  # arr2 = arr_num.map {|n| n.to_i}
  # arr2.sum
  
end 

p sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45