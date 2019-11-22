# Launch School Book: Introduction To Programming With Ruby
# fibonacci.rb 
# Answered On: 11/17/2019

# INSTRUCTIONS:
# 

puts "Enter a positive integer"
num = gets.chomp.to_i

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(num)
