=begin
Launch School: RB101-RB109 - Small Problems - Easy 7
ExerciseName: [The End Is Near But Not Here](https://launchschool.com/exercises/8332cd47)
FileName: x10.rb
Answered On: 11/03/2020
Updated On: 03/28/2021
PEDAC On: 03/28/2021
=end

=begin
  Write a method that returns the next to last word in the String passed to it 
  as an argument.

  Words are any sequence of non-blank characters.
  
  You may assume that the input String will always contain at least two words.
=end

def penultimate(str)
  p str.split[-2]
end

#Additional Solution 03/28/2021
def penultimate(str)
  arr = str.split  
  arr[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'