=begin
Launch School: RB101 Programming Foundations - Lesson 4 - Samples
ExerciseName: [Lesson 4](https://launchschool.com/lessons/85376b6d/assignments/ced192be)
FileName: fruit_plurals.rb
Answered On: 10/11/2020
=end

# require "pry"
# require "pp"

# Non-Mutating
def fruit_plural(fruits)
  fruits_arr = []
  counter = 0
  
  loop do 
    break if counter == fruits.size
    
    current_value = fruits[counter]
    fruits_arr << current_value.concat("s")
    
    counter += 1
  end
  
  fruits_arr
end

fruits = ['apple', 'banana', 'pear']
puts("Non-Mutating")
p fruit_plural(fruits)

# Mutating
def fruit_plural!(fruits)
  counter = 0
  
  loop do 
    break if counter == fruits.size
    
    current_value = fruits[counter]
    counter_value = current_value.concat("s")
    
    counter += 1
  end
  
  fruits
end

fruits_mutated = ['apple', 'banana', 'pear']
puts("Mutated")
p fruit_plural!(fruits_mutated)