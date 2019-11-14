# Launch School Book: Introduction To Programming With Ruby
# methods_05.rb 
# Answered On: 11/13/2019

# INSTRUCTIONS:
# What will the following code print to the screen?

# puts "the code below prints nothing and returns nil"

# code for this exercise
def scream(words)
  words = words + "!!!!"
  # return -- this was commented as it exits the method right away.
  # instead the return is called implicitly at the end (below the next line.)
  puts words
end

# puts scream("Yippeee") Prints Yippeee!!! but returns nil
p scream("Yippeee") # Prints Yippeee!!!! but returns nil
  
