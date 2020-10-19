=begin
Launch School: RB101-RB109 - Small Problems - Easy 3
ExerciseName: [Squaring an Argument](https://launchschool.com/exercises/d24fe972)
FileName: x05.rb
Answered On: 10/17/2020
=end

=begin

Using the multiply method from the "Multiplying Two Numbers" problem, write a
method that computes the square of its argument (the square is the result of 
multiplying a number by itself).

Examples: 
  square(5) == 25
  square(-8) == 64

=end

def multiply(num1,num2)
  num1 * num2
end

def square(num3)
  multiply(num3,num3)
end

puts("Please enter a number")
num = gets.chomp.to_i

result = square(num)
puts("#{num} ** 2 = #{result}")

