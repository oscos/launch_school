=begin
Launch School: RB101-RB109 - Small Problems - Easy 8
ExerciseName: [Sum of Sums](https://launchschool.com/exercises/8a66610c)
FileName: x01.rb
Answered On: 11/04/2020
=end

=begin
  Write a method that takes an Array of numbers and then returns the sum of the 
  sums of each leading subsequence for that Array. You may assume that the Array 
  always contains at least one number.
=end

def sum_of_sums(arr)
  # arr[0] + (arr[0] + arr[1]) + (arr[0] + arr[1] + arr[2])
  
  arr_collection = []
  arr_result = []
  
  arr.map do |el|
    arr_result << arr_collection += [el]
  end
  
  arr_result.flatten.sum
end


def sum_of_sums(arr)
  collection = 0
  result = 0
  
  arr.map do |el|
    collection += el
    result += collection
  end
  
  result
end

def sum_of_sums(arr)
  collection = 0
  arr.map{ |el| collection += el }.sum
end

p sum_of_sums([3, 5, 2])

# p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) == 4
# p sum_of_sums([1, 2, 3, 4, 5]) == 35