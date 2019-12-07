# Launch School Book: Introduction To Programming With Ruby
# arrays_07.rb 
# Answered On: 12/06/2019

# INSTRUCTIONS:
# Write a program that iterates over an array and builds a new array that is
# the result of incrementing each value in the original array by a value of 2. 
# You should have two arrays at the end of this program, The original array 
# and the new array you've created. Print both arrays to the screen using 
# the p method instead of puts.

puts "Write a program that iterates over an array and builds a new array that is"
puts "the result of incrementing each value in the original array by a value of 2." 
puts "You should have two arrays at the end of this program, The original array "
puts "and the new array you've created. Print both arrays to the screen using"
puts "the p method instead of puts."
puts ""

arr = [1, 2, 3, 4, 5]
arr2 = arr.map { |num| num + 2 }

puts "p arr = [1, 2, 3, 4, 5]"
p arr
puts ""

puts "p arr2 = arr.map { |num| num + 2 }"
p arr2
puts ""

