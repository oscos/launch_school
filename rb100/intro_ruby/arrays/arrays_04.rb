# Launch School Book: Introduction To Programming With Ruby
# arrays_.rb 
# Answered On: 12/06/2019

# INSTRUCTIONS:
# What does each method return in the following example?

puts "What does each method return in the following example?"
puts "   arr = [15, 7, 18, 5, 12, 8, 5, 1]"
puts ""

arr = [15, 7, 18, 5, 12, 8, 5, 1]

answer1 = arr.index(5)
puts "1. arr.index(5) => #{answer1}"
puts ""

#answer2 = arr.index[5]
puts "2. arr.index[5] => NoMethodError: undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index>"
puts ""

answer3 = arr[5]
puts "3. arr[5] => #{answer3}"
puts ""