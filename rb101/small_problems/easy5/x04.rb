=begin
Launch School: RB101-RB109 - Small Problems - Easy 5
ExerciseName: [Letter Swap](https://launchschool.com/exercises/56e92849)
FileName: x04.rb
Answered On: 10/29/2020
=end

=begin
Given a string of words separated by spaces, write a method that takes this 
string of words and returns a string in which the first and last letters 
of every word are swapped.

You may assume that every word contains at least one letter, and that the 
string will always contain at least one word. You may also assume that each 
string contains nothing but words and spaces
=end

# require 'pry'

def swap(str)
  new_word =
    str.split.map do |word|
      word[0], word[-1] = word[-1], word[0]
      word
    end
    
  new_word.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
