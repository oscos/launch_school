# Launch School Book: Introduction To Programming With Ruby
# exercises_02.rb 
# Answered On: 03/07/2020

# INSTRUCTIONS:
# Use the each method of Array to iterate over 
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print 
# out each value greater than 5.

puts "Use the each method of Array to iterate over "
puts "[1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value."
puts "greater than 5."

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

arr.each do |num|
    if num > 4
        puts num
    else
        puts "--"
    end
end



