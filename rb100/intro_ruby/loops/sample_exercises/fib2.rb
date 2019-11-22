# Launch School Book: Introduction To Programming With Ruby
# fibonacci.rb 
# Answered On: 11/17/2019

# INSTRUCTIONS:
# 

require "pry"

def fibonacci(number)
  if number < 2
     number
  else
    # fibonacci(number - 1) + fibonacci(number - 2)
    # binding.pry     # execution will pause here, allowing you to inspect all objects 
    # byebug
    
    puts "number: #{number} fib(#{number - 1}) = #{fibonacci(number - 1)} fib(#{number - 2}) = #{fibonacci(number - 2)}"    
    
    
  end
  
end

fibonacci(4)


