# Launch School - Intro to Ruby
# arrays - ex02.rb
# Answered On 07/23/2020

# What will the following programs return? What is the value of arr after each?

#1
arr = ["b", "a"]
arr = arr.product(Array(1..3))   # => [ ['b',1], ['b',2], ['b',3], ['a',1], ['a',2], ['a',3] ]
p arr.first.delete(arr.first.last) # => 1

# arr returns => [ ['b'], ['b',2], ['b',3], ['a',1], ['a',2], ['a',3] ]

p arr

#2
arr = ["b", "a"]
arr = arr.product([Array(1..3)]) # => [ ['b',[1,2,3]], ['a',[1,2,3]] ]
arr.first.delete(arr.first.last) # => [1,2,3]

# returns => [ ['b'], ['a',[1,2,3]] ]

p arr