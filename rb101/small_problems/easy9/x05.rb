=begin
Launch School: RB101-RB109 - Small Problems - Easy 9
ExerciseName: [Uppercase Check](https://launchschool.com/exercises/5ed98c5a)
FileName: x05.rb
Answered On: 11/06/2020
=end

=begin
  Write a method that takes a string argument, and returns true if all of the 
  alphabetic characters inside the string are uppercase, false otherwise. 
  Characters that are not alphabetic should be ignored.
=end

def uppercase?(str)
  str =~ /[a-z]/ ? false : true 
end

# LS Solution
def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true