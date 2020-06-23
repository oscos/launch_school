# ex08.rb
# Name Not Found

# Write a method that accepts one argument, but doesn't require it. The parameter 
# should default to the string "Bob" if no argument is given. The method's return 
# value should be the value of the argument. The code should output true twice.

def assign_name(parameter_one='Bob')
  parameter_one
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'