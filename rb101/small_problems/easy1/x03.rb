=begin
Launch School: RB101-RB109 - Small ProblemsEasy 1 - List of Digits
ExerciseName: [List of Digits](https://launchschool.com/exercises/30e147eb)
FileName: ex03.md
Answered On: 09/12/2020
=end

# Write a method that takes one argument, a positive integer, and returns a list 
# of the digits in the number.

def digit_list(int)
  
  int.digits.reverse

  # Other working solutions:
  
  # int.to_s.split('').map{|item| item.to_i }

  # int.to_s.chars.map(&:to_i)
  
  # int.to_s.each_char.map(&:to_i)
  
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
