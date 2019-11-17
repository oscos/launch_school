# Launch School Book: Introduction To Programming With Ruby
# flow_control_02.rb 
# Answered On: 11/14/2019

# INSTRUCTIONS:
# Write a method that takes a string as argument. The method should return a new, 
# all-caps version of the string, only if the string is longer than 10 characters. 
# Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has 
# a few methods that would be helpful. Check the Ruby Docs!)


def upper(word)
  if word.length > 10
    word.upcase
   else word
   end
end


puts upper("supercalifragilisticexpialidocious")
puts upper("stooge")

