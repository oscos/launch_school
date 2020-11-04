=begin
Launch School: RB101-RB109 - Small Problems - Easy 7
ExerciseName: [Multiplicative Average](https://launchschool.com/exercises/00ee768d)
FileName: x07.rb
Answered On: 11/03/2020
=end

=begin
  Write a method that takes an Array of integers as input, multiplies all the 
  numbers together, divides the result by the number of entries in the Array, 
  and then prints the result rounded to 3 decimal places. Assume the array is 
  non-empty.
=end

def show_multiplicative_average(arr)
  average = (arr.reduce(:*)/ arr.count.to_f)
  puts "The result is #{format('%.3f',average)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667