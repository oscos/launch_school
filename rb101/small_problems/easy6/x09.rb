=begin
Launch School: RB101-RB109 - Small Problems - Easy 6
ExerciseName: [Does My List Include This?](https://launchschool.com/exercises/860cfef1)
FileName: x09.rb
Answered On: 11/01/2020
=end

=begin
  Write a method named include? that takes an Array and a search value as 
  arguments. This method should return true if the search value is in the array, 
  false if it is not. You may not use the Array#include? method in your solution.
=end


def include?(arr, num)
  arr2 = arr.select { |element| element == num }
  arr2.empty? ? false : true
end

# Liked both solutions submitted by James laferty
def include?(arr, num)
  arr.select { |i| i == num }.size > 0
end

def include?(arr, num)
  arr.count(num) > 0
end
  
# LS Solution
def include?(array, value)
  !!array.find_index(value)
end

# p include?([1,2,3,4,5], 3)
# p include?([1,2,3,4,5], 6) 
# p include?([], 3)
# p include?([nil], nil) 
# p include?([], nil)

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
