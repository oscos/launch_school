# Launch School Book: Introduction To Programming With Ruby
# additional_exercises_06.rb 
# Answered On: 03/10/2020

# INSTRUCTIONS:
# Get rid of duplicates without specifically removing any one value.

arr = [1, 2, 2, 3, 3, 3, 4, 5, 6, 7, 8, 9, 10];

puts "Append 11 to the end of the original array.  "
arr.push(11)
p arr

puts ""

puts "Prepend 0 to the beginning: "
arr.unshift(0)
p arr

puts ""

puts "Get rid of 11. And append a 3:  "
arr.pop
arr.push(3)
p arr

puts ""

puts "Get rid of duplicates without specifically removing any one value."
arr.uniq!
p arr