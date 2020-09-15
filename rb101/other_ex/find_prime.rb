# require 'pry'

# https://launchschool.com/blog/live-session-beginning-ruby-part-5
# ex3

# ## Solution #1
# def is_prime?(number) 
#   return false if number == 1  # add this line to your code. 
#   n = 2 
#   while n < number # note that when number = 2, while loop is skipped and method returns true
#     return false if number % n == 0 
#     n += 1 
#   end 
#     binding.pry
#   true 
# end 

# ### Solution #2
# def is_prime?(number) 
#   return false if number == 1
#   arr = (2...number).to_a
#   arr2 = []
#   arr.each do |num|  #note that when number = 2 arr.each is skipped and method returns true
#     result =  number % num == 0 ? "not_prime" : "prime"
#     arr2 << result
#   end
#   return false if arr2.include?("not_prime")
#   true
# end 

p is_prime?(1)
p is_prime?(2)
p is_prime?(12)
p is_prime?(17)
p is_prime?(19)
p is_prime?(21)
