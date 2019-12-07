# Launch School Book: Introduction To Programming With Ruby
# arrays_06.rb 
# Answered On: 12/06/2019

# INSTRUCTIONS:
# 

puts "You run the following code..."
puts "  names = ['bob', 'joe', 'susan', 'margaret']"
puts "  names['margaret'] = 'jody'" 
puts ""
puts "The code returns an error, why?"
puts ""
puts "Arrays are what we call indexed lists. That means that each slot in an array is numbered." 
puts "You can reference any element by its index number. In the line 2 above a string was given instead"
puts "To fix, replace the line: name['margaret']" 
puts " with the following line: names[3]='jody'"
puts 
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'

puts "This will return the following array: "
p names
