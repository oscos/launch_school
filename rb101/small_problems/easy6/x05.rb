=begin
Launch School: RB101-RB109 - Small Problems - Easy 6
ExerciseName: [Reversed Arrays (Part 2)](https://launchschool.com/exercises/577016f3)
FileName: x05.rb
Answered On: 11/01/2020
Updated: 03/29/2021
PEDAC: 03/29/2021
=end

=begin
  Write a method that takes an Array, and returns a new Array with the elements 
  of the original list in reverse order. Do not modify the original list.
  
  You may not use Array#reverse or Array#reverse!, nor may you use the method 
  you wrote in the previous exercise.
  
  reverse([1,2,3,4]) == [4,3,2,1]          # => true
  reverse(%w(a b e d c)) == %w(c d e b a)  # => true
  reverse(['abc']) == ['abc']              # => true
  reverse([]) == []                        # => true
  
  list = [1, 3, 2]                      # => [1, 3, 2]
  new_list = reverse(list)              # => [2, 3, 1]
  list.object_id != new_list.object_id  # => true
  list == [1, 3, 2]                     # => true
  new_list == [2, 3, 1]                 # => true

=end

# def reverse(arr)
#   counter = arr.size
#   dup_arr = arr.dup
#   new_arr = []
  
#   loop do 
#     break if counter == 0
#     new_arr << dup_arr.pop
#     counter -= 1
#   end
#   new_arr
# end

# I also liked Raul Romero C. Solution.  
def reverse(array)
  reverse_array = []
  index = -1

  loop do
    break if index < (array.size * -1)
    reverse_array << array[index]
    index += -1
  end

  reverse_array
end

# Also liked Preston
def reversed(arr)
  arr.each_with_object([]) { |el, reversed| reversed.prepend(el) }
end

# Additional Solution added on 03/01/2021
def reverse(arr)
  result = []
  arr.each_with_index do |el,idx|
    result.insert(-(idx+1),el)
  end
  result
end

# additional solution 03/29/2021
def reverse(arr)
  results = []
  1.upto(arr.size) do |idx|
    results << arr[-idx]
  end 
    
  results
end

# additional solution 03/29/2021
def reverse(arr)
  results = []
  arr.each do |el| 
    results.prepend(el)
  end
  results
end

p reverse([1,2,3,4])  == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
