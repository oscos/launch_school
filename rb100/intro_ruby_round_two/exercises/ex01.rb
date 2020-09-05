# Launch School - Intro to Ruby
# exercises - ex01.rb
# Answered On 08/23/2020

puts("Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], ")
puts("and print out each value.")

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


# # Imperative Anti-pattern
# len = arr.length

# while len >= 0 do
#     puts arr[len]
#     len -= 1
# end

# Declarative
arr.each do |num|
    puts num
end
