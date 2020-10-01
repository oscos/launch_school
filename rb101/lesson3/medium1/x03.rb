=begin
Launch School: RB101 Programming Foundations - Lesson 3 - Practice Problems
ExerciseName: [Medium1](https://launchschool.com/lessons/263069da/assignments/6eba600c)
FileName: ex03.rb
Answered On: 09/29/2020
=end

# require "pry"

=begin
Alan wrote the following method, which was intended to show all of the factors 
of the input number:

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

Alyssa noticed that this will fail if the input is 0, or a negative number, and 
asked Alan to change the loop. How can you make this work without using 
begin/end/until? Note that we're not looking to find the factors for 0 or 
negative numbers, but we just want to handle it gracefully instead of raising an 
exception or going into an infinite loop.

=end

def factors(number)
    return "number must be greatr than zero" if (number == 0 || number < 0 )
    
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

p factors(0)
p factors(-1)
p factors(16)

# Bonus 1
# What is the purpose of the number % divisor == 0 ?
#   - To ensure that the number is divided evenly by the divisor with no remainder.

# Bonus 2
# What is the purpose of the second-to-last line (line 8) in the method (the factors 
# before the method's end)?
#   - To ensure that the factors array is what gets return in the method since 
#       the last line in a method is what gets returned.