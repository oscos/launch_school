=begin
Launch School: RB101 Programming Foundations - Lesson 3 - Practice Problems
ExerciseName: [Medium1](https://launchschool.com/lessons/263069da/assignments/6eba600c)
FileName: ex01.rb
Answered On: 09/29/2020
=end

# require "pry"

# Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the
# days before computers had video screens).

# For this practice problem, write a one-line program that creates the following 
# output 10 times, with the subsequent line indented 1 space to the right:

slogan = 'The Flintstones Rock!'
 
# 10.times {|str| p slogan.prepend(" ") }

10.times {|str| puts slogan.prepend(" ") }
