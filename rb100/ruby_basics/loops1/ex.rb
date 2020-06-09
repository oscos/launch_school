# ex08.md
# Given the array of several numbers below, use an until loop to print each number.

numbers = [7, 9, 13, 25, 18]

# Expected Output
=begin
7
9
13
25
18
=end

x = 0

until x == numbers.size
    puts numbers[x]
    x += 1
end