=begin
Launch School: RB101-RB109 - Small Problems - Easy 3
ExerciseName: [Multiplying Two Numbers](https://launchschool.com/exercises/d1cd145c)
FileName: x04.rb
Answered On: 10/17/2020
=end

=begin
Create a method that takes two arguments, multiplies them together, and returns 
the result.

Examples: 
  multiply(5, 3) == 15
=end

def multiply(num1,num2)
  num1 * num2
end

puts("Please enter the first number")
num1 = gets.chomp.to_i

puts("Please enter the second number")
num2 = gets.chomp.to_i

product = multiply(num1,num2)

puts("#{num1} * #{num2} = #{product}")