=begin
Launch School: RB101-RB109 - Small Problems - Easy 8
ExerciseName: []()
FileName: x0.rb
Answered On: 11/05/2020
=end

=begin

  Write a method that returns a list of all substrings of a string. The returned 
  list should be ordered by where in the string the substring begins. This means 
  that all substrings that start at position 0 should come first, then all 
  substrings that start at position 1, and so on. Since multiple substrings will 
  occur at each position, the substrings at a given position should be returned 
  in order from shortest to longest.

  You may (and should) use the leading_substrings method you wrote in the 
  previous exercise:

=end

def substrings(str)
  result = []
  str.size.times do |idx|
    result << leading_substrings(str[idx..-1])
  end
  result.flatten
end

# from previous exercise
def leading_substrings(str) 
  result = []
  str.size.times do |idx|
    result << str[0..idx]
  end
  result
end

# Addional Solution added 03/08/2021
def substrings(str)
  str.chars.map.with_index do |subr,index|
    leading_substrings(str.slice(index..-1))
  end.flatten
end
def leading_substrings(str) # from prev exercise.
  str.chars.map.with_index do |el, index|
    str.slice(0..index)
  end
end


# Additional Solutions Added on 03/08/2021
def substrings(str)
  result = []
  1.upto(str.size) do |idx|
    str.chars.each_cons(idx) do |subr|
      result << subr.join
    end
  end
  result.sort
end



p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

