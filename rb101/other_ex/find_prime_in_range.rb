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