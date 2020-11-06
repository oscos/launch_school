=begin
Launch School: RB101-RB109 - Small Problems - Easy 8
ExerciseName: [Reverse the Digits In a Number](https://launchschool.com/exercises/351fdfdb)
FileName: x09.rb
Answered On: 11/05/2020
=end

=begin
  Write a method that takes a positive integer as an argument and returns that 
  number with its digits reversed. Examples:
=end

def reversed_number(num)
  num.digits.join.to_i
end

p reversed_number(12345)

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1