=begin
Launch School: RB101-RB109 - Small Problems - Medium1
ExerciseName: [Rotation (Part 2)](https://launchschool.com/exercises/11e2bbdc)
FileName: x02.rb
Answered On: 11/07/2020
=end

=begin
  Write a method that can rotate the last n digits of a number. For example:
=end

def rotate_rightmost_digits(num, n)
  arr = num.digits.reverse
  number = arr.delete_at(-n)
  arr.append(number).join.to_i
end

# Additional solution 03/11/2021
def rotate_rightmost_digits(int, n) 
  arr = int.digits.reverse
  arr << arr.delete_at(-n)
  arr.join.to_i
end

# 03/11/2021 additional solution making use of solution from previous exercise
def rotate_array(arr)
arr.drop(1) + arr[0...1]
end
def rotate_rightmost_digits(int, n)
  arr = int.to_s.chars
  range =  arr[-n..-1]
  (arr - range + rotate_array(range)).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917