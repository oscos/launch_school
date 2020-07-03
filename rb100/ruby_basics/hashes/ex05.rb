# ex05.rb
# Labeled Numbers
# Answered On: 07/02/2020

# Use Hash#each to iterate over numbers and print each element's key/value pair.

numbers = {
    high:   100,
    medium: 50,
    low:    10
}

# Expected Output: 
#   A high number is 100.
#   A medium number is 50.
#   A low number is 10.

numbers.each do
    |k,v|
    puts("A #{k} numer is #{v}")
end