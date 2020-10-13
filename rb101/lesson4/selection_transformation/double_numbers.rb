=begin
Launch School: RB101 Programming Foundations - Lesson 4 - Samples
ExerciseName: [Lesson 4](https://launchschool.com/lessons/85376b6d/assignments/ced192be)
FileName: multiplyby2.rb
Answered On: 10/12/2020
=end

# require "pry"
# require "pp"

# Non-mutating - different Array Object ID
puts("Non-Mutating - returns new array with new elements")
def double_numbers(numbers_arr)
  new_arr = []  
  counter = 0
  
  loop do
    break if counter == numbers_arr.size
    
    current_value = numbers_arr[counter]
    new_arr << current_value *= 2
    
    counter += 1
  end
    
  new_arr
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]

puts
puts("Mutating - returns same array with new elements")

# Mutating - Same Array object ID
def double_numbers!(numbers_arr)
  # new_arr = []  
  counter = 0
  
  loop do
    break if counter == numbers_arr.size
    
    current_value = numbers_arr[counter]
    numbers_arr[counter] = current_value *= 2
    
    counter += 1
  end
    
  numbers_arr
end

my_numbers2 = [1, 4, 3, 7, 2, 6]
p double_numbers!(my_numbers2) # => [2, 8, 6, 14, 4, 12]