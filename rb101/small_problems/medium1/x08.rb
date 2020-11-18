=begin
Launch School: RB101-RB109 - Small Problems - Medium1
ExerciseName: [Fibonacci Numbers (Recursion)](https://launchschool.com/exercises/83e16900)
FileName: x08.rb
Answered On: 11/15/2020
=end

=begin
  Write a recursive method that computes the nth Fibonacci number, where nth 
  is an argument to the method.
=end

def fibonacci(nth)
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end

p fibonacci(6)

# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765