=begin
Launch School: RB101-RB109 - Small Problems - Easy 5
ExerciseName: [Alphabetical Numbers](https://launchschool.com/exercises/c688f4e5)
FileName: x08.rb
Answered On: 10/30/2020
=end

=begin
Write a method that takes an Array of Integers between 0 and 19, and returns an 
Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, 
thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen
=end

# using sort_by
def alphabetic_number_sort(arr)
  words = %w[zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen]
  arr.sort_by do |number|
    words[number]
  end
end

# using sort
def alphabetic_number_sort(arr)
  words = %w[zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen]
  arr.sort do |number1, number2|
     words[number1]<=>words[number2]
  end
end

p alphabetic_number_sort((0..19).to_a)
