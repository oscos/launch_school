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

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917