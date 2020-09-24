=begin
Launch School: RB101 Programming Foundations - Lesson 3 - Practice Problems
ExerciseName: [Easy 1](https://launchschool.com/lessons/263069da/assignments/e2593fe1)
FileName: ex05.rb
Answered On: 09/22/2020
=end

# Programmatically determine if 42 lies between 10 and 100.
# Use Ruby range object.

p (10..100).include?(42)
# p (10..100).cover?(42)


# ('a'..'z').cover?('yellow')
# # => true

# ('a'..'z').include?('yellow')  #takes long to run
# # => false

# ('yellaa'..'yellzz').include?('yellow') # takes long to run
#  => true