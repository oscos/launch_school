=begin
Launch School: RB101-RB109 - Small Problems - Easy 9
ExerciseName: [How long are you?](https://launchschool.com/exercises/15a07c61)
FileName: x06.rb
Answered On: 11/06/2020
Updated: 03/31/2021
PEDAC: 03/31/2021
=end

=begin
  Write a method that takes a string as an argument, and returns an Array that 
  contains every word from the string, to which you have appended a space and 
  the word length.

  You may assume that words in the string are separated by exactly one space, 
  and that any substring of non-space characters is a word.
=end

# solution #1
def word_lengths(str)
  result = []
  str.split.each do |word|
    result << "#{word} #{word.size}"
  end
  result
end

# solution #2
def word_lengths(str)
  str.split.map do |word|
    "#{word} #{word.size}"
  end
end

# Additional Solution 03/31/2021
def word_lengths(input_str)
  arr = input_str.split(" ")
  arr.map do |subs|
    subs = "#{subs} #{subs.length}" # No need to reassign since map transforms
  end
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []