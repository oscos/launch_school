=begin
Launch School: RB101-RB109 - Small Problems - Easy 1 - What's my Bonus?
ExerciseName: [What's my Bonus?](https://launchschool.com/exercises/ff309c91)
FileName: ex10.md
Answered On: 09/16/2020
=end

# Write a method that takes two arguments, a positive integer and a boolean, and 
# calculates the bonus for a given salary. If the boolean is true, the bonus should 
# be half of the salary. If the boolean is false, the bonus should be 0.

# require 'pry'

def calculate_bonus(int, bool)
  
  bool == true ? int / 2 : 0
  
end 

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000