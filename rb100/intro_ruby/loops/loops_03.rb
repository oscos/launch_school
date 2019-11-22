# Launch School Book: Introduction To Programming With Ruby
# loops_03.rb 
# Answered On: 11/21/2019

# INSTRUCTIONS:
# Use the each_with_index method to iterate through an array of
# your creation that prints each index and value of the array. 

arr = ["A","B","C","D","E"]

arr.each_with_index do
    |val,idx|
    puts "#{idx}:  #{val}"
end


