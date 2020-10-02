=begin
Launch School: RB101 Programming Foundations - Lesson 3 - Practice Problems
ExerciseName: [Medium1](https://launchschool.com/lessons/263069da/assignments/6eba600c)
FileName: ex06.rb
Answered On: 09/30/2020
=end

# require "pry"

# What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

#Answer: 
# return value: 34
# Since 'mess_with_it' is a non-mutating method, the orinal value of answer
# remains the same value of 42.  Therefore the asnwer is 42 - 8 = 34.