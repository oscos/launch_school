=begin
Launch School: RB101 Programming Foundations - Lesson 5
ExerciseName: [Lesson 5 - Practice Problems](https://launchschool.com/lessons/c53f2250/assignments/f524e910)
FileName: x11.rb
Answered On: 10/26/2020
=end

# require "pry"
# require "pp"

# Given the following data structure use a combination of methods, including 
# either the select or reject method, to return a new array identical in structure 
# to the original but containing only the integers that are multiples of 3.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]


def is_multiple?(arr)
  arr.map do |subarr|
    subarr.select do |number|
      number % 3 == 0
    end
  end
end

p is_multiple?(arr)

