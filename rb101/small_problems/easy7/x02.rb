=begin
Launch School: RB101-RB109 - Small Problems - Easy 7
ExerciseName: [Lettercase Counter](https://launchschool.com/exercises/96e0267a)
FileName: x02.rb
Answered On: 11/02/2020
=end

=begin
  Write a method that takes a string, and then returns a hash that contains 3 
  entries: one represents the number of characters in the string that are 
  lowercase letters, one the number of characters that are uppercase letters, 
  and one the number of characters that are neither.
=end

# solution using array collections
def letter_case_count(str)
  lowercase_letters = ("a".."z").to_a
  uppercase_letters = ("A".."Z").to_a
  h1 = {lowercase: 0, uppercase: 0, neither: 0}
  
  str.chars.each do |chr|
    if lowercase_letters.include?(chr)
      h1[:lowercase] += 1
    elsif uppercase_letters.include?(chr)
      h1[:uppercase] += 1
    else
      h1[:neither] += 1
    end
  end
  h1
end

# solution using regex
def letter_case_count(str)
  h1 = {lowercase: 0, uppercase: 0, neither: 0}
  str.chars.each do |chr|
    if chr =~ /[a-z]/ then h1[:lowercase] += 1
    elsif chr =~ /[A-Z]/ then h1[:uppercase] += 1
    else h1[:neither] += 1
    end
  end
  h1
end

# LS solution using regex and counts
def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end

# Also liked Michael Daniello solution:
def letter_case_count(string)
  l_hash = {}
  l_hash[:lowercase] = string.count("a-z")
  l_hash[:uppercase] = string.count("A-Z")
  l_hash[:neither] = string.length - (l_hash[:lowercase] + l_hash[:uppercase])
  l_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
