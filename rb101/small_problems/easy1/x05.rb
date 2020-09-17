=begin
Launch School: RB101-RB109 - Small Problems - Easy 1 - Reverse It (Part 1)
ExerciseName: [Reverse It (Part 1)](https://launchschool.com/exercises/51e98567)
FileName: ex05.md
Answered On: 09/12/2020
=end

# Write a method that takes one argument, a string, and returns a new string 
# with the words in reverse order

# require 'pry'

def reverse_sentence(str)

  str.split.reverse.join(" ")
  
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

