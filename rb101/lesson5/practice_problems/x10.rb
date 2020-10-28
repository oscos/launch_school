=begin
Launch School: RB101 Programming Foundations - Lesson 5
ExerciseName: [Lesson 5 - Practice Problems](https://launchschool.com/lessons/c53f2250/assignments/f524e910)
FileName: x10.rb
Answered On: 10/26/2020
=end

# require "pry"
# require "pp"

# Given the following data structure and without modifying the original array, 
# use the map method to return a new array identical in structure to the original 
# but where the value of each integer is incremented by 1.

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# Solution1
var = 
  arr.map do |hash|
    h2 = {}
    hash.each do |k, v|
      h2[k] = v + 1
    end
    h2
  end
p var
p arr