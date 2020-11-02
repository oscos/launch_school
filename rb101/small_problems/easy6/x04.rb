=begin
Launch School: RB101-RB109 - Small Problems - Easy 6
ExerciseName: [Give us your feedback
Reversed Arrays (Part 1)](https://launchschool.com/exercises/eec5e591)
FileName: x0.rb
Answered On: 11/01/2020
=end

=begin
  Write a method that takes an Array as an argument, and reverses its elements 
  in place; that is, mutate the Array passed into this method. The return value 
  should be the same Array object.
  
  You may not use Array#reverse or Array#reverse!.
  
  Examples:
  list = [1,2,3,4]
  result = reverse!(list)
  result == [4, 3, 2, 1]
  list == [4, 3, 2, 1]
  list.object_id == result.object_id
  
  list = %w(a b e d c)
  reverse!(list) == ["c", "d", "e", "b", "a"]
  list == ["c", "d", "e", "b", "a"]
  
  list = ['abc']
  reverse!(list) == ["abc"]
  list == ["abc"]
  
  list = []
  reverse!(list) == []
  list == []
=end

def reverse!(arr)
  counter = arr.size
  dup_arr = arr.dup
  arr.clear
  
  loop do 
    break if counter == 0
    arr << dup_arr.pop
    counter -= 1
  end
  arr
end

# Also liked Mustafa ILIKKAN
def reverse!(array)
  copy_array = array.dup
  array.map! { |_| copy_array.pop }
end

# my modified version of LS
def reverse(arr)
  start_point = 0
  end_point   = -1
  mid_point   = arr.size / 2
  
  while start_point < mid_point
    arr[start_point], arr[end_point] = arr[end_point], arr[start_point]
    start_point += 1
    end_point -= 1
  end
  arr
end

reverse!([1,2,3,4])
reverse!(%w(a b e d c))
reverse!([])
