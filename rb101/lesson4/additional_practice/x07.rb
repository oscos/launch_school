=begin
Launch School: RB101 Programming Foundations - Lesson 4 - Additional Practice
ExerciseName: [Lesson 4 - Additional Practice](https://launchschool.com/lessons/85376b6d/assignments/a76c28ac)
FileName: x07.rb
Answered On: 10/13/2020
=end

# require "pry"
# require "pp"

# Create a hash that expresses the frequency with which each letter occurs in this string:
statement = "The Flintstones Rock"

h1 = Hash.new(0)

statement.chars.each do |letter|
    h1[letter] += 1
end

p h1