=begin
Launch School: RB101 Programming Foundations - Lesson 5
ExerciseName: [Lesson 5 - Practice Problems](https://launchschool.com/lessons/c53f2250/assignments/f524e910)
FileName: x13.rb
Answered On: 10/26/2020
=end

# require "pry"
# require "pp"

# Given the following data structure, return a new array containing the same 
# sub-arrays as the original but ordered logically by only taking into 
# consideration the odd numbers they contain. The sorted array should look like this:
# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

def order_odds(arr)
  arr.sort_by do |sub_arr|
    sub_arr.select do |element|
      element.odd?
    end
  end
end

p order_odds(arr)

