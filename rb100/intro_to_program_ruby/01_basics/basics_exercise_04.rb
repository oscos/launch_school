# Launch School Book: Introduction To Programming With Ruby
# The Basics - Excercise 04 
# Answered On: 11/08/2019

# INSTRUCTIONS:
# Use the dates from the previous example and store them in an array. 
# Then make your program output the same thing as exercise

arr = [1975,1976,1984,1990,1997,2007]

=begin
puts arr[0]
puts arr[1]
puts arr[2]
puts arr[3]
puts arr[4]
puts arr[5]
=end

arr.each do
  |year|
  puts year
end
