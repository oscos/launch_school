=begin
Launch School: RB101-RB109 - Small Problems - Easy 5
ExerciseName: [Letter Counter (Part 1)](https://launchschool.com/exercises/e66bd409)
FileName: x06.rb
Answered On: 10/29/2020
=end

=begin
Write a method that takes a string with one or more space separated words and 
returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.
=end

def word_sizes(str)
  str.split.map { |element| element.size }.tally
end

def word_sizes(str)
  str.split.group_by { |element| element.size }.map{ |k,v| [k, v.size] }.to_h
end

def word_sizes(str)
  h1 = Hash.new(0)
  str.split.each do |element|
    h1[element.size] += 1
  end
  h1
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
