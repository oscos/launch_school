# ex05.rb
# Evwm Numbers
# Answered On: 07/03/2020


# We want to iterate through the numbers array and return a new array containing
# only the even numbers. However, our code isn't producing the expected output. 
# Why not? How can we change it to produce the expected result?

numbers = [5, 2, 9, 6, 3, 1, 8]

#even_numbers = numbers.map do |n|
even_numbers = numbers.select do |n|  # fix applied, changed from map to select.
    # n if n.even?
    n.even?  # refactored 
end

p even_numbers # expected output: [2, 6, 8]