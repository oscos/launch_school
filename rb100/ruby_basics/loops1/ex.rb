# ex06.md
# Using a while loop, print 5 random numbers between 0 and 99. The code 
# below shows an example of how to begin solving this exercise.


numbers = []

while numbers.size == 0
  numbers << rand(100)
end

puts numbers