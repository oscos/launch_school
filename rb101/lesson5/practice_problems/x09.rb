=begin
Launch School: RB101 Programming Foundations - Lesson 5
ExerciseName: [Lesson 5 - Practice Problems](https://launchschool.com/lessons/c53f2250/assignments/f524e910)
FileName: x09.rb
Answered On: 10/26/2020
=end

# require "pry"
# require "pp"

# Given this data structure, return a new array of the same structure but with 
# the sub arrays being ordered (alphabetically or numerically as appropriate) 
# in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# solution #1
var1
  arr.map do |arr|
    arr.sort.reverse
  end
p var1

#Solution #2
var2 = 
  arr.map do |arr|
    arr.sort do |a,b|
      b <=>a
    end
  end
p var2