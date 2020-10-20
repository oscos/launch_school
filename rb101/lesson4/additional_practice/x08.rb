=begin
Launch School: RB101 Programming Foundations - Lesson 4 - Additional Practice
ExerciseName: [Lesson 4 - Additional Practice](https://launchschool.com/lessons/85376b6d/assignments/a76c28ac)
FileName: x08.rb
Answered On: 10/13/2020
=end

require "pry"
require "pp"

# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
# numbers = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]

numbers.each do |number|
  p number
  numbers.shift(1)
end

puts()

# Solution and explanations:
# # The array will keep iterating until counter == numbers.size 
# Each time the index is increased by one like a counter in a loop



numbers2 = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]

numbers2.each_with_index do |number, index|
  p "#{index}  #{numbers.inspect}  #{number}"
  numbers.shift(1)
end

=begin
"0  [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]  10"
"1  [20, 30, 40, 50, 60, 70, 80, 90, 100]  30"
"2  [30, 40, 50, 60, 70, 80, 90, 100]  50"
"3  [40, 50, 60, 70, 80, 90, 100]  70"
"4  [50, 60, 70, 80, 90, 100]  90"
=end


=begin
"0  [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]  10"
"1  [20, 30, 40, 50, 60, 70, 80, 90, 100]  30"
"2  [30, 40, 50, 60, 70, 80, 90, 100]  50"
"3  [40, 50, 60, 70, 80, 90, 100]  70"
"4  [50, 60, 70, 80, 90, 100]  90"
=end


# Using loop and counter
# counter = 0
# loop do 
#   p counter
#   break if counter == numbers.size
#   current_value = numbers[counter] # 10
#   numbers.shift(1)
#   # binding.pry  
#   counter+= 1
# end


# arr2 = []
# numbers.each do |number|
#   p number
#   arr2 << numbers.shift(1)
#   # binding.pry
# end
# p numbers
# puts 
# p arr2
