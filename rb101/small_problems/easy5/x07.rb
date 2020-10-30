=begin
Launch School: RB101-RB109 - Small Problems - Easy 5
ExerciseName: [Letter Counter (Part 2)](https://launchschool.com/exercises/16124e4d)
FileName: x07.rb
Answered On: 10/29/2020
=end

=begin
Modify the word_sizes method from the previous exercise to exclude non-letters 
when determining word size. For instance, the length of "it's" is 3, not 4.
=end

# using tally
def word_sizes(str)
  str = str.gsub(/[^a-zA-Z ]/,"")
  str.split.map { |element| element.size }.tally
end

# using group_by
def word_sizes(str)
  str = str.gsub(/[^a-zA-Z ]/,"")
  str.split.group_by { |element| element.size }.map{ |k,v| [k, v.size] }.to_h
end

# using hash initialized with 0 and index assigment
def word_sizes(str)
  str = str.gsub(/[^a-zA-Z ]/,"")
  h1 = Hash.new(0)
  str.split.each do |element|
    h1[element.size] += 1
  end
  h1
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

# p word_sizes('Four score and seven.')

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}
