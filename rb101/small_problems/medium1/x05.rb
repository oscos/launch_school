=begin
Launch School: RB101-RB109 - Small Problems - Medium1
ExerciseName: [Diamonds!](https://launchschool.com/exercises/75ff93ae)
FileName: x05.rb
Answered On: 11/10/2020
=end

=begin
  Write a method that displays a 4-pointed diamond in an n x n grid, where n is 
  an odd integer that is supplied as an argument to the method. You may assume 
  that the argument will always be an odd integer.
=end

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

# [1,3,5,7,9,7,5,3,1]
# [4,3,2,1] # spaces

# original solution
def diamond(num)
  stars = []
  midpoint = num / 2
  counter = 0
  (1..num).each {|v| stars << v if v.odd? } # top half
  stars << stars.reverse[1..-1]  # bottom half
  stars.flatten.each do |n|
    n2 = (counter <= midpoint) ? (midpoint - counter) : (counter - midpoint) 
    puts (" " * n2) + ("*" * n)
    counter += 1
  end
end

# refactored solution using center
def diamond(num)
  stars = []
  (1..num).each {|v| stars << v if v.odd? } # top half
  stars << stars.reverse[1..-1]  # bottom half
  stars.flatten.each { |n| puts ('*' * n).center(num) }
end

# diamond(1)
# diamond(3)
# diamond(5)
diamond(9)