=begin
Launch School: RB101-RB109 - Small Problems - Easy 8
ExerciseName: [Get The Middle Character](https://launchschool.com/exercises/365dfb8b)
FileName: x10.rb
Answered On: 11/05/2020
Updated: 03/30/2021
PEDAC: 03/30/2021
=end

=begin
  Write a method that takes a non-empty string argument, and returns the middle 
  character or characters of the argument. If the argument has an odd length, 
  you should return exactly one character. If the argument has an even length, 
  you should return exactly two characters.
=end

def center_of(str)
  half_point = str.size / 2  
  
  if str.size.odd?
    str[half_point]
  else
    str[half_point-1,2]
  end
end

# Additional Solution 03/30/2021
def center_of(str)
  mid = str.length / 2
  str.length.even? ? str[(mid - 1)..mid] : str[mid]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'