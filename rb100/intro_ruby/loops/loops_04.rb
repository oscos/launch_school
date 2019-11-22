# Launch School Book: Introduction To Programming With Ruby
# loops_04.rb 
# Answered On: 11/19/2019

# INSTRUCTIONS:
# Write a method that counts down to zero using recursion.

# Helpful Articles: 
# http://ruby.bastardsbook.com/chapters/numbers/
# https://medium.com/@tannrallard/exploring-the-difference-between-modulus-and-remainder-in-rubys-numeric-class-65eb8b50a4b8


def countdown(i)
    puts i
    countdown(i-1) if i > 0
end

puts countdown(10)
