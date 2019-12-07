# Launch School Book: Introduction To Programming With Ruby
# arrays_01.rb 
# Answered On: 12/03/2019

# INSTRUCTIONS:
# Below we have given you an array and a number. Write a program 
# that checks to see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(number)
    puts "The number: #{number} exists in the array"
else
    puts "The number: #{number} does not exists in the array"
end


