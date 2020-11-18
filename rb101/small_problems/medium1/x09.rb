=begin
Launch School: RB101-RB109 - Small Problems - Medium1
ExerciseName: [Fibonacci Numbers (Procedural)](https://launchschool.com/exercises/336d2612)
FileName: x09.rb
Answered On: 11/17/2020
=end

=begin
  In the previous exercise, we developed a recursive solution to calculating the
  nth Fibonacci number. In a language that is not optimized for recursion, some 
  (not all) recursive methods can be extremely slow and require massive quantities 
  of memory and/or stack space.

  Ruby does a reasonably good job of handling recursion, but it isn't designed for 
  heavy recursion; as a result, the Fibonacci solution is only useful up to about 
  fibonacci(40). With higher values of nth, the recursive solution is impractical. 
  (Our tail recursive solution did much better, but even that failed at around 
  fibonacci(8200).)
  
  Fortunately, every recursive method can be rewritten as a non-recursive 
  (procedural) method.
  
  Rewrite your recursive fibonacci method so that it computes its results 
  without recursion.
=end

# adapted from Bennett Struttman Solution.
def fibonacci(nth)
  result = []
  nth.times do 
    result.size < 2 ? result << 1 : result << (result[-2] + result[-1])
  end
  result[-1]  # result.last
end

# LS Answer:
def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  #  binding.pry
  end

  last
end


p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765


