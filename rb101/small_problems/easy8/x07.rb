=begin
Launch School: RB101-RB109 - Small Problems - Easy 8
ExerciseName: [Double Char (Part 1)](https://launchschool.com/exercises/665638e3)
FileName: x07.rb
Answered On: 11/05/2020
Updated: 03/30/2021
PEDAC: 03/30/2021
=end

=begin
  Write a method that takes a string, and returns a new string in which every 
  character is doubled.
=end

# solution #1
def repeater(str)
  result = ''
  str.size.times do |idx|
    result << str[idx] * 2
  end
  result
end

# LS Solution
def repeater(str)
  result = ''
  str.each_char do |char|
    result << char << char
  end
  result
end

# Additonal Solution Added 03/08/2021
def repeater(str)
  str.chars.map do |el|
    el * 2
  end.join
end

# Additonal Solution Added 03/30/2021
def repeater(str)
  str.chars.map do |el|
    el * 2
  end.join
end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''