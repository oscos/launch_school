=begin
Launch School: RB101-RB109 - Small Problems - Easy 4
ExerciseName: [Short Long Short](https://launchschool.com/exercises/f175ddac)
FileName: x01.rb
Answered On: 10/18/2020
Updated On: 02/18/2021
=end

=begin
Write a method that takes two strings as arguments, determines the longest of the 
two strings, and then returns the result of concatenating the shorter string, the 
longer string, and the shorter string once again. You may assume that the strings 
are of different lengths.
=end

def short_long_short(str1, str2)
  concat_string = ''
  
  if str1.size < str2.size
    concat_string << str1
    concat_string << str2
    concat_string << str1
  else
    concat_string << str2
    concat_string << str1
    concat_string << str2
  end
  concat_string
end 

# Solution #2 added on 02/18/2021
def short_long_short(str1, str2)
  str1.length < str2.length ? (str1 + str2 + str1) : (str2 + str1 + str2)
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"