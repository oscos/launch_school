=begin
Launch School: RB101-RB109 - Small Problems - Easy 1 - Reverse It (Part 2)
ExerciseName: [Reverse It (Part 2)](https://launchschool.com/exercises/b415a65e)
FileName: ex06.md
Answered On: 09/16/2020
=end

# Write a method that takes one argument, a string containing one or more words, 
# and returns the given string with words that contain five or more characters 
# reversed. Each string will consist of only letters and spaces. Spaces should be 
# included only when more than one word is present.

# require 'pry'

def reverse_words(str)

  arr_words = str.split()
  
  arr_words.map do |word|
    word.reverse! if word.size >= 5
  end
  
  arr_words.join(" ")

end

puts reverse_words('Professional') == 'lanoisseforP'
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
puts reverse_words('Launch School') == 'hcnuaL loohcS'

