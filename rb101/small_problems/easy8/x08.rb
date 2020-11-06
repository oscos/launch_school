=begin
Launch School: RB101-RB109 - Small Problems - Easy 8
ExerciseName: [Double Char (Part 2)](https://launchschool.com/exercises/86fbfc4c)
FileName: x08.rb
Answered On: 11/05/2020
=end

=begin
  Write a method that takes a string, and returns a new string in which every 
  consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and 
  whitespace should not be doubled.

=end

def double_consonants(str)
  whitelist = ()
  result = ''
  str.size.times do |idx|
    if str[idx] =~ /[a-z&&[^aeiou]]/i # /[a-z&&[^aeiou]]/i
      result << str[idx] * 2 
    else
      result << str[idx]
    end
  end
  
  result
end

p double_consonants('String')

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""