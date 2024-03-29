=begin
Launch School: RB101-RB109 - Small Problems - Easy 8
ExerciseName: [Palindromic Substrings](https://launchschool.com/exercises/93efd352)
FileName: x05.rb
Answered On: 11/05/2020
=end

=begin
  Write a method that returns a list of all substrings of a string that are 
  palindromic. That is, each substring must consist of the same sequence of 
  characters forwards as it does backwards. The return value should be arranged 
  in the same sequence as the substrings appear in the string. Duplicate 
  palindromes should be included multiple times.

  You may (and should) use the substrings method you wrote in the previous 
  exercise.
  
  For the purposes of this exercise, you should consider all characters and pay 
  attention to case; that is, "AbcbA" is a palindrome, but neither 
  "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not 
  palindromes.
=end

# solution for current exercise
def palindromes(str)
  substrings(str).select do |el|
    el == el.reverse && el.size > 1
  end
end

# solution for further exploration - alphanum only
def palindromes_further_explore(str)
  new_str = str.downcase.gsub(/[^a-z0-9]/,"")
  substrings(new_str).select do |el|
    el == el.reverse && el.size > 1
  end
end

# from previous exercise
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

#Additonal Solution 03/30/2021
# produces correct result however fails solution becuase
# sort is off due to the way each_cons returns results.
def palindromes(str)
  results = []
  1.upto(str.length) do |idx|
    str.chars.each_cons(idx)
    .each {|subr| results << subr.join if subr.size > 1 && subr == subr.reverse}
  end
  results.sort 
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]