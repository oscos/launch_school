=begin
Launch School: RB101-RB109 - Small Problems - Easy 3
ExerciseName: [Counting the Number of Characters](https://launchschool.com/exercises/f85563ae)
FileName: x03.rb
Answered On: 10/17/2020
=end

=begin
Write a program that will ask a user for an input of a word or multiple words and 
give back the number of characters. Spaces should not be counted as a character.

Examples: 
  Input: Please write word or multiple words: walk
  Output: There are 4 characters in "walk".
  
  Input: Please write word or multiple words: walk, don't run
  Output: There are 13 characters in "walk, don't run".
=end

puts("Please write word or multiple words")
str = gets.chomp

# Solution 1
char_count = str.chars.reject {|char| char == " "}.count
puts("There are #{char_count} characters in '#{str}'.")

# Solution 2
# char_count = str.delete(" ").size
# puts("There are #{char_count} characters in '#{str}'.")