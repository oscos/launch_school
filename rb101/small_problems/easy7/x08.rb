=begin
Launch School: RB101-RB109 - Small Problems - Easy 7
ExerciseName: [Multiply Lists](https://launchschool.com/exercises/4a28f116)
FileName: x08.rb
Answered On: 11/03/2020
=end

=begin
  Write a method that takes two Array arguments in which each Array contains a 
  list of numbers, and returns a new Array that contains the product of each 
  pair of numbers from the arguments that have the same index. You may assume 
  that the arguments contain the same number of elements.
=end

# solution
def multiply_list(arr1, arr2)
  arr3 = []
  arr1.each_with_index do |_, idx|
    arr3 << (arr1[idx] * arr2[idx])
  end
  arr3
end

# further exploration
def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]