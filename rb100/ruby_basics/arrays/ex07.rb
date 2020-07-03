# ex07.rb
# Divisible by Three
# Answered On: 07/02/2020


# In the code below, an array containing five numbers is assigned to numbers.

numbers = [5, 9, 21, 26, 39]

# Use Array#select to iterate over numbers and return a new array that contains 
# only numbers divisible by three. Assign the returned array to a variable 
# named divisible_by_three and print its value using #p.

# Expected Output:
#   [9, 21, 39]

divisible_by_three =
numbers.select do  # Array#select will only return values where block is true.
    |num|
    num % 3 == 0
end

p(divisible_by_three) # use p to print as array format.