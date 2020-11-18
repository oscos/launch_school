=begin
Launch School: RB101-RB109 - Small Problems - Medium1
ExerciseName: [Fibonacci Numbers (Last Digit)](https://launchschool.com/exercises/2dd79c4e)
FileName: x10.rb
Answered On: 11/17/2020
=end

=begin
  In the previous exercise, we developed a procedural method for computing the 
  value of the nth Fibonacci numbers. This method was really fast, computing the 
  20899 digit 100,001st Fibonacci sequence almost instantly.

  In this exercise, you are going to compute a method that returns the last 
  digit of the nth Fibonacci number.
=end


def fibonacci_last(nth)
  result = []
  nth.times do 
    result.size < 2 ? result << 1 : result << result[-2] + result[-1]
  end
  result[-1].digits[0]  # result.last.digits.first
end


p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# crash cloud9 ## p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# crash cloud9 ## p fibonacci_last(123456789) # -> 4