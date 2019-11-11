# Launch School Book: Introduction To Programming With Ruby
# variables_05.rb 
# Answered On: 11/10/2019

# INSTRUCTIONS:
# Look at the following programs...
# What does x print to the screen in each case? 
# Do they both give errors? Are the errors different? Why?

puts "The first ruby program outputs 3 and does not produce errors."
puts "the second ruby program will produce an error indicating x is not defined due to scope"

=begin

# 1st Program:
x = 0
3.times do
  x += 1
end
puts x

# 2nd program:
y = 0
3.times do
  y += 1
  x = y
end
puts x

=end
