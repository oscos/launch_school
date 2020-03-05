# Launch School Book: Introduction To Programming With Ruby
# hashes_05.rb 
# Answered On: 01/31/2020

# INSTRUCTIONS:
# What method could you use to find out if a Hash contains a specific value in it? 
# Write a program to demonstrate this use.

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

if person.has_key?(:name) == true
    puts "The person is: #{person[:name]}"
else
    puts "Value Not found"
end