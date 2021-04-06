=begin
Launch School: RB101-RB109 - Small Problems - Easy 9
ExerciseName: [Uppercase Check](https://launchschool.com/exercises/5ed98c5a)
FileName: x05.rb
Answered On: 11/06/2020
Updated: 03/31/2021
PEDAC: 03/31/2021
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

# Additional Solution 03/31/2021
def uppercase?(input_str)
  input_str.chars.each do |el|
      if el =~ (/[a-z]/i)
        return false if el == el.downcase
      end
  end
  
  true
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true