=begin
Launch School: RB101 Programming Foundations - Lesson 5
ExerciseName: [Lesson 5 - Practice Problems](https://launchschool.com/lessons/c53f2250/assignments/f524e910)
FileName: x15.rb
Answered On: 10/26/2020
=end

# require "pry"
# require "pp"

# Given this data structure write some code to return an array which contains 
# only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

def odd_hash(arr)
  arr.select do |hsh|
    hsh.all? do |k,arr|
      arr.all? do |element|
        element.even?
      end
    end
  end
end

p odd_hash(arr)

