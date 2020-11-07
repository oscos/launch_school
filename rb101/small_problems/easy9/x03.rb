=begin
Launch School: RB101-RB109 - Small Problems - Easy 9
ExerciseName: [Always Return Negative](https://launchschool.com/exercises/311da364)
FileName: x03.rb
Answered On: 11/06/2020
=end

=begin
  Write a method that takes a number as an argument. If the argument is a 
  positive number, return the negative of that number. If the number is 0 or 
  negative, return the original number.
=end

def negative(num)
  num <= 0 ? num : -num
end

# LS Solution
def negative(number)
  -number.abs
end


p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby