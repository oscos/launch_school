=begin
Launch School: RB101 Programming Foundations - Lesson 5
ExerciseName: [Lesson 5 - Practice Problems](https://launchschool.com/lessons/c53f2250/assignments/f524e910)
FileName: x07.rb
Answered On: 10/26/2020
=end

# require "pry"
# require "pp"

# Given this code, what would be the final values of a and b? Try to work this 
# out without running the code.

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a


# Solution: 
arr = [ 4, [3,8] ]

#a remained the same -2
#b was modified as the element at index 0 was replaced from 5 to 3