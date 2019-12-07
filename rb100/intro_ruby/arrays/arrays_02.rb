# Launch School Book: Introduction To Programming With Ruby
# arrays_.rb 
# Answered On: 12/03/2019

# INSTRUCTIONS:
# What does the following program return

# NOTES: 


puts "1. What does the following program return:"
puts "    arr = [\"b\", \"a\"]"
puts "    arr = arr.product(Array(1..3))"
puts "    arr.first.delete(arr.first.last)"
puts ""
puts "1. Answer: "
puts "    arr = [\"b\", \"a\"] => [\"b\", \"a\"]"
puts "    arr = arr.product(Array(1..3)) => [ [\"b\", 1], [\"b\", 2], [\"b\", 3], [\"a\", 1], [\"a\", 2], [\"a\", 3] ]"
puts "    arr.first.delete(arr.first.last) => 1"
puts "    arr => [ [\"b\"], [\"b\", 2], [\"b\", 3], [\"a\", 1], [\"a\", 2], [\"a\", 3] ]"

puts ""

puts "2. What does the following program return:"
puts "    arr = [\"b\", \"a\"]"
puts "    arr = arr.product([Array(1..3)])"
puts "    arr.first.delete(arr.first.last)"
puts ""
puts "2. Answer: "
puts "    arr = [\"b\", \"a\"] => [\"b\", \"a\"]"
puts "    arr = arr.product([Array(1..3)]) => [ [\"b\", [1, 2, 3] ], [\"a\", [1, 2, 3] ] ]" 
puts "    arr.first.delete(arr.first.last) => [1, 2, 3]"
puts "    arr => [ [\"b\"], [\"a\", [1, 2, 3] ] ] "

