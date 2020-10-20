=begin
Launch School: RB101 Programming Foundations - Lesson 4 - Additional Practice
ExerciseName: [Lesson 4 - Additional Practice](https://launchschool.com/lessons/85376b6d/assignments/a76c28ac)
FileName: x09.rb
Answered On: 10/13/2020
=end

# require "pry"
# require "pp"

=begin
As we have seen previously we can use some built-in string methods to change 
the case of a string. A notably missing method is something provided in Rails, 
but not in Ruby itself...titleize. This method in Ruby on Rails creates a 
string that has each word capitalized as it would be in a title. For example, 
the string:
=end

words = "the flintstones rock"

words.split.map do |word|
    word.capitalize
end.join(" ")