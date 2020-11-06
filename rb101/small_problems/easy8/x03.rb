=begin
Launch School: RB101-RB109 - Small Problems - Easy 8
ExerciseName: [eading Substrings](https://launchschool.com/exercises/8bbbc072)
FileName: x0.rb
Answered On: 11/05/2020
=end

=begin
  Write a method that returns a list of all substrings of a string that start 
  at the beginning of the original string. The return value should be arranged 
  in order from shortest to longest substring.
=end

# solution #1
def leading_substrings(str) 
  result = []
  str.size.times do |idx|
    result << str[0..idx]
  end
  result
end

# solution #2
def leading_substrings(str) 
  collection = []
  result = []
  str.chars.each do |el|
    collection += [el]
    result << collection.join
  end
  
  result
end

# solution #3
def leading_substrings(str) 
  str.chars.map.with_index do |_, idx|
    str[0..idx]
  end
end



p leading_substrings('abc')

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']


