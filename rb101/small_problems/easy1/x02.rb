=begin
Launch School: RB101-RB109 - Small ProblemsEasy 1 - Odd
ExerciseName: [Odd](https://launchschool.com/exercises/dfa7db2c)
FileName: ex02.md
Answered On: 09/12/2020
=end

# Write a method that takes one integer argument, which may be positive, negative, 
# or zero. This method returns true if the number's absolute value is odd. You may 
# assume that the argument is a valid integer value.

def is_odd?(int)
    
  # int.abs.odd? # #abs, #remainder

  # int.abs.remainder(2) == 1  # #abs and #remainder 
  
  # int.remainder(2) == 1 || int.remainder(2) == -1  # remainder only
    
  int % 2 != 0 # #modulo

end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
