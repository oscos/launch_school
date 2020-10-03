=begin
Launch School: RB101 Programming Foundations - Lesson 3 - Practice Problems
ExerciseName: [Hard](https://launchschool.com/lessons/263069da/assignments/a3c602d1)
FileName: x02.rb
Answered On: 10/01/2020
=end

# require "pry"
# require "pp"

# What do you expect to happen when the greeting variable is referenced in the 
# last line of the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings