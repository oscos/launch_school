=begin
Launch School: RB101-RB109 - Small Problems - Easy 3
ExerciseName: [Palindromic Numbers](https://launchschool.com/exercises/9ba7885a)
FileName: x10.rb
Answered On: 10/18/2020
=end

=begin
Write a method that returns true if its integer argument is palindromic, false 
otherwise. A palindromic number reads the same forwards and backwards.
=end

def palindrome?(string)
  string == string.reverse
end

def palindromic_number?(number)
  number.to_s.chars == number.to_s.chars.reverse
end

# # Launch School Solution
# def palindromic_number?(number)
#   palindrome?(number.to_s)
# end

# Solution #2 added on 02/18/2021
def palindromic_number?(int)
  int.digits == int.digits.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true