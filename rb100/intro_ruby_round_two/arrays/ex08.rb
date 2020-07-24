# Launch School - Intro to Ruby
# arrays - ex08.rb
# Answered On 07/23/2020

# Write a program that iterates over an array and builds a new array that is the
# result of incrementing each value in the original array by a value of 2. You 
# should have two arrays at the end of this program, The original array and the 
# new array you've created. Print both arrays to the screen using the p method 
#instead of puts.


arr = Array.new(5) { rand(1..20) }
new_arr = Array.new(0)

arr.each do
    |num| 
    num += 2
    new_arr.push(num)
end

p arr
p new_arr