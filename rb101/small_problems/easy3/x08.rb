=begin
Launch School: RB101-RB109 - Small Problems - Easy 3
ExerciseName: [Palindromic Strings (Part 1)](https://launchschool.com/exercises/71ca3279)
FileName: x08.rb
Answered On: 10/18/2020
=end

def palindrome?(string)
  # string == string.reverse ? true : false
  string == string.reverse # refactored.
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true