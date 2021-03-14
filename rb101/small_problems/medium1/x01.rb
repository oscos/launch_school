=begin
Launch School: RB101-RB109 - Small Problems - Easy 9
ExerciseName: [Rotation (Part 1)](https://launchschool.com/exercises#rb101rb109_small_problems)
FileName: x01.rb
Answered On: 11/06/2020
=end

=begin
  Write a method that rotates an array by moving the first element to the end 
  of the array. The original array should not be modified.
  
  Do not use the method Array#rotate or Array#rotate! for your implementation.
=end

# solution = moves first to last 
def rotate_array(arr)
  arr_dup = arr.dup
  first = arr_dup.shift
  arr_dup.append(first)
end

# other solution ideas - moves last to first
def rotate_array_last_to_first(arr)
  arr_dup = arr.dup
  last = arr_dup.pop
  arr_dup.prepend(last)
end

# other solution ideas - moves first to last and last to first.
def rotate_array_first_to_last_and_last_to_first(arr)
  arr_dup = arr.dup
  first = arr_dup.shift
  last = arr_dup.pop
  arr_dup.append(first)
  arr_dup.prepend(last)
end


# Additional solutions added 03/11/2021
def rotate_array(arr)
arr.drop(1) + arr[0...1]
end

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_integer(int)
  rotate_string(int.to_s).to_i
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

p rotate_string("abc") == "bca"
p rotate_string("a") == "a"

p rotate_integer(735291) == 352917
