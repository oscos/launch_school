=begin
Launch School: RB101 Programming Foundations - Lesson 3 - Practice Problems
ExerciseName: [Medium1](https://launchschool.com/lessons/263069da/assignments/6eba600c)
FileName: ex05.rb
Answered On: 09/30/2020
=end

# require "pry"

=begin
Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator. 
A user passes in two numbers, and the calculator will keep computing the sequence 
until some limit is reached.

Ben coded up this implementation but complained that as soon as he ran it, he 
got an error. Something about the limit variable. What's wrong with the code?


limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"
=end

# Answer:
#   - limit inside the method does not have access to the local scope limit 
#     variable defined outside the block.  This can be fixed by passing the 
# =>  local variable that is outside the block as a parameter into the method.

limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"