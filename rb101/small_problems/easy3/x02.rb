=begin
Launch School: RB101-RB109 - Small Problems - Easy 3
ExerciseName: [Arithmetic Integer](https://launchschool.com/exercises/b161d835)
FileName: x02.rb
Answered On: 10/17/2020
=end

=begin
Write a program that prompts the user for two positive integers, and then prints 
the results of the following operations on those two numbers: addition, 
subtraction, product, quotient, remainder, and power. Do not worry about 
validating the input.

Examples: 
  ==> Enter the first number:
  23
  ==> Enter the second number:
  17
  ==> 23 + 17 = 40
  ==> 23 - 17 = 6
  ==> 23 * 17 = 391
  ==> 23 / 17 = 1
  ==> 23 % 17 = 6
  ==> 23 ** 17 = 141050039560662968926103
=end

require 'pry'

counter = 0
num = 0
ordinals_arr = ["first", "second"]
arr = []

loop do
  break if counter == ordinals_arr.size
  current_value = ordinals_arr[counter]
  puts("Enter the #{current_value} number:")
  num = gets.chomp
  
  if num.to_i.to_s != num
    puts("Invalid entry only postivie integers please.")
    counter -= 1
  else
    arr << num.to_i if counter < ordinals_arr.size
  end
  
  num = num.to_i
  addition = 
  
  if counter == 1
    puts("#{arr[0]} + #{arr[1]} = #{arr.inject(:+)}")
    puts("#{arr[0]} - #{arr[1]} = #{arr.inject(:-)}")
    puts("#{arr[0]} * #{arr[1]} = #{arr.inject(:*)}")
    puts("#{arr[0]} / #{arr[1]} = #{arr.inject(:/)}")
    puts("#{arr[0]} % #{arr[1]} = #{arr.inject(:%)}")
    puts("#{arr[0]} ** #{arr[1]} = #{arr.inject(:**)}")
  end
  counter += 1
   
  # binding.pry
end