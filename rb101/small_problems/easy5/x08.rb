=begin
Launch School: RB101-RB109 - Small Problems - Easy 5
ExerciseName: [Alphabetical Numbers](https://launchschool.com/exercises/c688f4e5)
FileName: x08.rb
Answered On: 10/30/2020
Updated On: 02/26/2021
Updated On: 03/25/2021
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

# Additional Solution
def alphabetic_number_sort(arr)
  num_string = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  h =  arr.zip(num_string).to_h
  h.sort_by {|k,v| v}.to_h.keys
end

# Additonal Solution added 03/25/2021
def alphabetic_number_sort(arr)
  number_arr = %w(zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen)
  number_hash = arr.zip(number_arr).to_h
  number_hash.sort_by{|k,v| v}.to_h.keys
end

p alphabetic_number_sort((0..19).to_a)
