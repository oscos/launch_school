# ex03.rb
# Ignoring Case
# Answered On: 06/30/2020

# Using the following code, compare the value of name with the string 'RoGeR' 
# while ignoring the case of both strings. Print true if the values are the same; 
# print false if they aren't. Then, perform the same case-insensitive comparison, 
# except compare the value of name with the string 'DAVE' instead of 'RoGeR'.

name = 'Roger'

def compare_string(name, parameter2) 
    name.downcase == parameter2.downcase ? puts(true) : puts(false)
end

compare_string(name, 'RoGeR')
compare_string(name, 'DAVE')

# Launch School Solution
# name = 'Roger'

# puts name.casecmp('RoGeR') == 0
# puts name.casecmp('DAVE') == 0