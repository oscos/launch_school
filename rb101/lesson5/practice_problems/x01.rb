=begin
Launch School: RB101 Programming Foundations - Lesson 5
ExerciseName: [Lesson 5 - Practice Problems](https://launchschool.com/lessons/c53f2250/assignments/f524e910)
FileName: x01.rb
Answered On: 10/25/2020
=end

# require "pry"
# require "pp"

# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

# using sort_by
def sort_by_arr(arr)
  arr.sort_by do |element|
    element.to_i 
  end.reverse!
end
p sort_by_arr(arr)

# using sort
def sort_arr(arr)
  arr.sort do |a,b|
    b.to_i <=> a.to_i
  end
end
p sort_arr(arr)
