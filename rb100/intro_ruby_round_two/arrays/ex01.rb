# Launch School - Intro to Ruby
# arrays - ex01.rb
# Answered On 07/23/2020

# Below we have given you an array and a number. Write a program that checks to 
# see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]

# number = 3
number = rand(1..15)

if arr.include?(number) 
    puts "The number #{number} is in the array" 
else
    puts "The number #{number} is NOT in the array"
end