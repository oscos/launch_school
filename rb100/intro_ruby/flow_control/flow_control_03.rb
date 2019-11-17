# Launch School Book: Introduction To Programming With Ruby
# flow_controls_03.rb 
# Answered On: 11/14/2019

# INSTRUCTIONS:
# Write a program that takes a number from the user between 0 and 100 and 
# reports back whether the number is between 0 and 50, 51 and 100, or above 100.

puts "Pick a postivie integer number between 0 and 100"

num = gets.chomp.to_i

if num < 0
  puts "number has to be greater than 0"
elsif num.between?(0,50) then
  puts "#{num} is between 0 and 50"
elsif num.between?(51,100)
  puts "#{num} is between 50 and 100"
else
  puts "#{num} is greater than 100"
end
