=begin
Launch School: RB101-RB109 - Small Problems - Easy 9
ExerciseName: [](https://launchschool.com/exercises/38531b9c)
FileName: x04.rb
Answered On: 11/06/2020
=end

=begin
  Write a method that takes an integer argument, and returns an Array of all 
  integers, in sequence, between 1 and the argument.
  
  You may assume that the argument will always be a valid integer that is 
  greater than 0.
=end

def sequence(num)
  (1..num).to_a
end 

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]