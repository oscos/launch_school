# Launch School Book: Introduction To Programming With Ruby
# hashes_03.rb 
# Answered On: 01/27/2020

# INSTRUCTIONS:
# Using some of Ruby's built-in Hash methods, write a program that 
# loops through a hash and prints all of the keys. Then write a program 
# that does the same thing except printing the values. Finally, write a 
# program that prints both.

cars = {
    nissan: "altima",
    honda: "accord",
    totota: "camrey"
}

cars.each_key{|k| puts "key: #{k}"}
puts ""
cars.each_value{|v| puts "value: #{v}"}
puts ""
cars.each_pair{|k,v| puts "#{k}: #{v}"}