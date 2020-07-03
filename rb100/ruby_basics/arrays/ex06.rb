# ex06.rb
# Doubled
# Answered On: 07/02/2020


# In the code below, an array containing the numbers 1 through 5 is assigned to numbers.

numbers = [1, 2, 3, 4, 5]

# Use Array#map to iterate over numbers and return a new array with each number 
# doubled. Assign the returned array to a variable named doubled_numbers and 
# print its value using #p.

# Expected Output:
#   [2, 4, 6, 8, 10]

new_numbers =
numbers.map do
    |num|
    num += num
    # puts("I'm the number #{num}")
end

p(new_numbers) # use p to print as array format.