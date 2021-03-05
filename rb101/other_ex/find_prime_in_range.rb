# require 'pry'

# https://launchschool.com/blog/live-session-beginning-ruby-part-5
# ex3



### Solution #2 includes both methods below
def is_prime(num)

  return false if num == 1
  num_range = (2...num).to_a  # 3 dots in range excludes last element, to avoid dividing element by itself below.
  num_range.each do |divisor| 
      return false if (num % divisor == 0)
  end 
  true
  
end

def find_primes(num1,num2)
  num_range = (num1...num2).to_a.drop(1)
  num_range.select do |num|
    is_prime(num)
  end 
end

p find_primes(1,10)
# p find_primes(1,20)
# p find_primes(1,30)



#Additiona Solution 03/01/2021
def is_prime?(num)
  return false if num < 2
  (2...num).all? do |i|  # not that 3 dots (excludes num)
    num % i != 0
  end
end

# method to find all prime_numbers given number. Uses helper method above.
def prime_numbers(num)
  result = []
  (0..num).each do |i|
    result << i if is_prime?(i)
  end
  result
end

p prime_numbers(100)  == [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]

