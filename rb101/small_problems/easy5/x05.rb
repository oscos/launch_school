=begin
Launch School: RB101-RB109 - Small Problems - Easy 5
ExerciseName: [Clean up the words](https://launchschool.com/exercises/28ff0d86)
FileName: x05.rb
Answered On: 10/29/2020
=end

=begin
Given a string that consists of some words (all lowercased) and an assortment of 
non-alphabetic characters, write a method that returns that string with all of 
the non-alphabetic characters replaced by spaces. If one or more non-alphabetic 
characters occur in a row, you should only have one space in the result 
(the result should never have consecutive spaces).
=end

# With Regular Expressions
def cleanup(str)
  str.gsub(/[^a-z]/," ").squeeze(" ")
end

# Without Regular Expressions
def cleanup(str)
  letters_arr = ("a".."z").to_a
  str.chars.map { |chr| letters_arr.include?(chr) ? chr : " " }.join.squeeze(" ")
end

p cleanup("---what's my +*& line?") == ' what s my line '
