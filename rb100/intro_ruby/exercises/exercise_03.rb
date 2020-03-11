# Launch School Book: Introduction To Programming With Ruby
# additional_exercises_02.rb 
# Answered On: 03/10/2020

# INSTRUCTIONS:
# Now, using the same array from #2, use the select method 
# to extract all odd numbers into a new array.

puts "Now, using the same array from #2, use the select method "
puts "to extract all odd numbers into a new array."

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

arr.select do |num|
    if num % 2 == 1
        puts num
    else
        puts "--"
    end
end



