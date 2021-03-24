=begin
Launch School: RB101-RB109 - Small Problems - Easy 5
ExerciseName: [Multiples of 3 and 5](https://launchschool.com/exercises/675bc8c9)
FileName: x05.rb
Answered On: 10/18/2020
Updated On: 02/18/2021
=end

=begin
  Write a method that searches for all multiples of 3 or 5 that lie between 1 
  and some other number, and then computes the sum of those multiples. For 
  instance, if the supplied number is 20, the result should be 
  98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

  You may assume that the number passed in is an integer greater than 1.
=end

def multiples(number, multiple)
  counter = 1
  multiples_arr = []
  loop do
    multiples = multiple * counter
    multiples_arr << multiples if multiples <= number
    break if multiples >= number 
    counter += 1
  end
  multiples_arr
end

def multisum(number)
  ( multiples(number, 3) + multiples(number, 5) ).uniq.sum
end

# Solution #2 Added on 02/18/2021
def multisum(int)
  arr = (1..int)
  arr.select{|num| num if (num % 3 == 0 || num % 5 == 0)}.sum
end

# Solution #3 Added on 03/20/2021
def multisum(input_int)
  arr = (1..input_int).to_a
  arr.select do |num|
    num % 3 == 0 || num % 5 == 0
  end.sum
end

p multisum(20) == 98
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168