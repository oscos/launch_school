=begin
Launch School: RB101-RB109 - Small Problems - Easy 6
ExerciseName: [Halvsies](https://launchschool.com/exercises/d9b79537)
FileName: x07.rb
Answered On: 11/01/2020
Updated: 03/29/2021
PEDAC: 03/29/2021
=end

=begin
  Write a method that takes an Array as an argument, and returns two Arrays 
  (as a pair of nested Arrays) that contain the first half and second half of 
  the original Array, respectively. If the original array contains an odd number 
  of elements, the middle element should be placed in the first half Array.
=end

def halvsies(arr)
  half =  arr.size.odd? ? arr.size/2 : (arr.size/2) -1
  arr2 = []
  arr2 << arr[0..half]
  arr2 << arr[(half + 1)..-1]
end

# modified version of solution by Rona Hsu
def halvsies(arr)
  half =  arr.size.odd? ? arr.size/2 : (arr.size/2) - 1
  arr.partition.with_index { |k,idx| idx <= half }
end

# Additonal solution added 03/01/2021
def halvsies(arr)
  mid =
    if arr.size.odd? 
    then (arr.size.to_f / 2).ceil
    else (arr.size.to_f / 2).floor
    end
  arr.partition.with_index { |_, idx| idx < mid }
end

# Additional solution 03/29/2021
def halvsies(arr)
  results = []
  mid = arr.size.odd? ? (arr.size / 2) + 1 : (arr.size / 2)
  results << arr[0...mid] << arr[mid..-1]
  results
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

