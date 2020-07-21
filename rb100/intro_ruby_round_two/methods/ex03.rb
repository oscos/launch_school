# Launch School - Intro to Ruby
# Methods - ex03.rb
# Answered On 07/20/2020

def multiply(num1, num2)
  product = num1 * num2
end 

p multiply(2, -3)
p multiply([2,4,6],3)
# p multiply(2,[3,6,9]) => ex03.rb:6:in `*': Array can't be coerced into Integer (TypeError)
p multiply("monkey",3)
# p multiply(3,"monkey") => ex03.rb:6:in `*': String can't be coerced into Integer (TypeError)