# ex01.rb
# First Car
# Answered On: 07/03/2020

# You come across the following code. What errors does it raise for the given 
# examples and what exactly do the error messages mean?

def find_first_nonzero_among(numbers)
    numbers.each do |n|
      return n if n.nonzero?
    end
end
  
# Examples
  
find_first_nonzero_among(0, 0, 1, 0, 2, 0)
find_first_nonzero_among(1)

# Answer: 
# You will get the error that more than 1 parameter received, since method
# invoication contains wrong number of arguments when only one is accepted
# To send over the different values, you can convert the multiple values
# into an arrary by wrapping it in brackets like so: 
# find_first_nonzero_among([0, 0, 1, 0, 2, 0])