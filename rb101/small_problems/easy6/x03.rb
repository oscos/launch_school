=begin
Launch School: RB101-RB109 - Small Problems - Easy 6
ExerciseName: [Fibonacci Number Location By Length](https://launchschool.com/exercises/1ba53710)
FileName: x03.rb
Answered On: 10/30/2020
=end

=begin
  The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) 
  such that the first 2 numbers are 1 by definition, and each subsequent number 
  is the sum of the two previous numbers. This series appears throughout the 
  natural world.
  
  Computationally, the Fibonacci series is a very simple series, but the results 
  grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 
  354,224,848,179,261,915,075 -- that's enormous, especially considering that it 
  takes 6 iterations before it generates the first 2 digit number.
  
  Write a method that calculates and returns the index of the first Fibonacci 
  number that has the number of digits specified as an argument. 
  
  (The first Fibonacci number has index 1.)
=end

=begin
PEDAC

Problem:
  Input: Number (length)
  Output: Number (first index)
  Rules:
    - define method
    - number argument must be greater than 0
    - index begins with 1 and not 0
    - 
  Questions / Concerns
    - what are the extremes?
    - is null allowed
    - is 0 allowed
  Mental Model: 
    - Write a method that accepts a number as parameter greater than zero and 
      passes it over to a second method that calculates the fibonnaci sequence.
      Keep passing numbers over to the fibonacci method until its return value
      is the same length (digits) as the number.
      
Example:
  see below:

Data Structure:
  - array
  - number
  
Algorithm
  - create method `find_fibonacci_index_by_length` with number parameter
  - invoke fibonacci method within a loop and check the return value of block
    until the first occurance where the 
  
Code
=end

require 'pry'

# solution using these two methods won't run as for some reason the fibonacci 
# implementation is slow.
# def fibonacci(number)
#   # if number < 2
#   #   number
#   # else
#   #   fibonacci(number - 1) + fibonacci(number - 2)
#   # end
# end

# def find_fibonacci_index_by_length(length)
#   counter = 1
#   loop do
#     calc_num = fibonacci(counter)
#     break if calc_num.digits.size == length
#     counter += 1
#   end
#   counter
# end

# found another John Finlay solution to work much faster and shorter
# def find_fibonacci_index_by_length(num)
#   arr = [1, 1]
#   arr << arr[-1] + arr[-2] until arr[-1].to_s.length == num
#   arr.size
# end

def find_fibonacci_index_by_length(num)
  fib = [1, 1]
  until fib.last.digits.size == num
    fib << fib[-1] + fib[-2]
  end
  fib.size
end


# fibonacci(10)
p find_fibonacci_index_by_length(3)

# p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# # p find_fibonacci_index_by_length(10000) == 47847

# def count_down(number)
#   if number < 1
#     puts number
#   else
#     puts number
#     count_down(number - 1)
#   end
# end

# count_down(10)
