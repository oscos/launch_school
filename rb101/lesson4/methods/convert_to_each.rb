=begin
Launch School: RB101 Programming Foundations - Lesson 4 - Methods
ExerciseName: [Lesson 4 - Methods](https://launchschool.com/lessons/85376b6d/assignments/3034b4e0)
FileName: convert_to_each.rb
Answered On: 10/12/2020
=end

# require "pry"
# require "pp"

numbers = [1, 2, 3]

puts("Using Loop")
counter = 0
loop do
  break if counter == numbers.size
  puts numbers[counter]
  counter += 1
end

puts
puts("Using Each Method")
numbers.each do |number|
  puts number
end