=begin
Launch School: RB101-RB109 - Small Problems - Easy 9
ExerciseName: [Counting Up](https://launchschool.com/exercises/38531b9c)
FileName: x04.rb
Answered On: 11/06/2020
Updated: 03/31/2021
PEDAC: 03/31/2021
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

# Additonal solution added 03/08/2021
def sequence(num)
  (1..num).map do |num|
    num
  end
end

#Additional Solutions 03/31/2021
def sequence(num)
  results = []
  1.upto(num) do |idx|
    results << idx
  end
  results
end
def sequence(num)
  (1..num).map do |idx|
    idx
  end
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]